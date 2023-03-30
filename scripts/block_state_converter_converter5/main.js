const readMCFunctionFiles = require('./readMCFunctionFiles');
const parseMCFunctionFile = require('./parseMCFunctionFile');
const saveJSON = require('./saveJSON');
const updateCommandWithId = require('./updateCommandWithId');
const writeMCFunctionFile = require('./writeMCFunctionFile');

const inputDirPath = '../../Crafter88/data/bsc/functions/get_nbt/block_states';
const outputDirPath = '../../Crafter88/data/bsc/functions/get_nbt/block_states';;

// 1. 対象ディレクトリ内のmcfunctionファイルを読み込む
const files = readMCFunctionFiles(inputDirPath);

// 2. mcfunctionファイルを解析して必要な情報をJSONファイルに保存する
const parsedData = files.map(file => parseMCFunctionFile(file));

// 3. ブロック状態に対応する状態IDを割り当てる
const idMap = {};
let id = 0;
parsedData.forEach(data => {
  //Object.keys(data).forEach(state => {
  data.forEach(state => {
    if (!(state.blockState in idMap)) {
      idMap[state.blockState] = ++id;
      state.numericID = id
    }
  });
});
saveJSON(`${outputDirPath}/parsedData.json`,parsedData);
saveJSON(`${outputDirPath}/idMap.json`,idMap);
files.forEach(file =>{
    updateCommandWithId(file,idMap)
})
/**
// 4. mcfunctionファイルを書き換えて状態IDを追加する
const updatedData = parsedData.map(data => updateCommandWithId(data, idMap));

// 5. 書き換えたmcfunctionファイルを出力ディレクトリに保存する
updatedData.forEach(data => {
  writeMCFunctionFile(data, `${outputDirPath}/${data.fileName}`);
});
*/