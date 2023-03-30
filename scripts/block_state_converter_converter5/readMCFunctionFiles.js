const fs = require('fs');

/**
 * 指定されたディレクトリ内のMCFunctionファイルを読み込む
 * @param {string} dirPath ディレクトリパス
 * @return {Array} 読み込んだMCFunctionファイルの内容が格納されたオブジェクトの配列
 */
function readMCFunctionFiles(dirPath) {
  const files = fs.readdirSync(dirPath);
  const mcFunctions = [];
  for (const file of files) {
    const filePath = dirPath + '/' + file;
    //const data = fs.readFileSync(filePath, 'utf8');
    //mcFunctions.push({ fileName: file, data: data });
    mcFunctions.push(filePath)
  }
  return mcFunctions;
}

module.exports = readMCFunctionFiles;
