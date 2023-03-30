const fs = require('fs');
const path = require('path');
const parseCommand = require('./parseCommand');

// ファイルを読み込み、コマンドを抽出して返す関数
function parseMCFunctionFile(filePath) {
  const commands = [];
  const fileContent = fs.readFileSync(filePath, 'utf-8');
  const lines = fileContent.split('\n');
  for (let i = 0; i < lines.length; i++) {
    const line = lines[i].trim();
    if (line.startsWith('execute')) {
      const command = parseCommand(line);
      commands.push(command);
    }
  }
  return commands;
}

module.exports = parseMCFunctionFile;