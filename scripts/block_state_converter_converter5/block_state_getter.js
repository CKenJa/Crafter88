// 必要なモジュールの読み込み
const fs = require('fs');
const path = require('path');

// 引数として受け取ったディレクトリパスを取得
//const directoryPath = process.argv[2];
const directoryPath = '../Crafter88/data/bsc/functions/get_nbt/block_states'

// マッチした文字列を格納する配列
let matches = [];

// ファイルの読み込みとマッチング
function matchInFile(filePath) {
  // ファイルを読み込む
  const data = fs.readFileSync(filePath, 'utf8');

  // 特定の文字列を検索する
  const regex = /execute if block ~ ~ ~ \[.+?\]\[.+?\] run data modify storage bsc out.Properties merge value \{.+?\}/g;
  const fileMatches = data.match(regex);

  // マッチした文字列を配列に追加する
  if (fileMatches) {
    matches.push(...fileMatches);
  }
}

// ディレクトリ内のmcfunctionファイルを探索する
function traverseDirectory(directoryPath) {
  const files = fs.readdirSync(directoryPath);

  files.forEach(function (file) {
    const filePath = path.join(directoryPath, file);

    // ディレクトリの場合、再帰的に探索する
    if (fs.statSync(filePath).isDirectory()) {
      traverseDirectory(filePath);
    } else {
      // mcfunctionファイルの場合、マッチング処理を実行する
      if (path.extname(filePath) === '.mcfunction') {
        matchInFile(filePath);
      }
    }
  });
}

// ディレクトリ内のmcfunctionファイルを読み込んでマッチングする
traverseDirectory(directoryPath);

// マッチした文字列をJSONファイルに書き込む
if (matches.length > 0) {
  const jsonData = JSON.stringify(matches.map(match => match.match(/\[(.+?)\]/g).map(str => str.slice(1, -1))));
  const jsonFilePath = path.join(directoryPath, 'matches.json');
  fs.writeFileSync(jsonFilePath, jsonData);
}
