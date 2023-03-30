const fs = require('fs');
const path = require('path');

const directoryPath = '../Crafter88/data/bsc/functions/get_nbt/';
const outputFilePath = './block_state_ids.json';

let idCounter = 1;
let idMap = {};

function processFile(filePath) {
  const fileContent = fs.readFileSync(filePath, 'utf-8');
  const updatedFileContent = fileContent.replace(/data modify storage bsc out set value {"Name":"(.+?)"}/g, (match, id) => {
    const newId = idCounter++;
    idMap[id] = newId;
    return `data modify storage bsc out set value {"Name":"${id}","ID":"${newId}"}"`;
  });
  fs.writeFileSync(filePath, updatedFileContent, 'utf-8');
  console.log(`file ${filePath}`)
}

function processDirectory(directoryPath) {
  fs.readdirSync(directoryPath).forEach((file) => {
    const filePath = path.join(directoryPath, file);
    if (fs.statSync(filePath).isDirectory()) {
      processDirectory(filePath);
    } else {
      processFile(filePath);
    }
  });
}

processDirectory(directoryPath);

fs.writeFileSync(outputFilePath, JSON.stringify(idMap), 'utf-8');