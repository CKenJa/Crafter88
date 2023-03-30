const fs = require('fs');

//const filePath = process.argv[2]; // ファイルパスをコマンドライン引数から取得
//const directoryPath = '../Crafter88/data/bsc/functions/get_nbt'
const directoryPath = '../Crafter88/data/bsc/functions/get_nbt/block_states'
//let count = 0;
let count = 361;

/**if (!filePath) {
  console.log('ファイルパスが指定されていません');
  process.exit(1);
}*/

const readFiles = (directoryPath) => {
    const fileList = fs.readdirSync(directoryPath, { withFileTypes: true });
    const files = [];
    for (const file of fileList) {
      if (file.isFile() && file.name.endsWith('.mcfunction')) {
        files.push(`${directoryPath}/${file.name}`);
      }
    }
    return files;
  };

  const findAndReplace = (filePath, idMap) => {
    const fileContent = fs.readFileSync(filePath, 'utf8');
    const regex = /data modify storage bsc out set value {"Name":"([^"]+)"}/g;
    let match;
    let replacedContent = fileContent;
    while ((match = regex.exec(fileContent))) {
      const id = ++count;
      const replacedString = `data modify storage bsc out set value {"Name":"${match[1]}","Id":${id}}`;
      replacedContent = replacedContent.replace(match[0], replacedString);
      idMap[match[1]] = id;
    }
    if (count > 0) {
      fs.writeFileSync(filePath, replacedContent);
    }
  };

  const idMap = {};
  const files = readFiles(directoryPath);
  for (const file of files) {
    findAndReplace(file, idMap);
  }

  fs.writeFileSync('result.json', JSON.stringify(idMap, null, 2));
  console.log('処理が完了しました');