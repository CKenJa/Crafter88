/**
function updateCommandWithId(command, blockData, id) {
    const propertiesIndex = command.lastIndexOf("Properties");
    if (propertiesIndex === -1) {
      throw new Error("Invalid command format: missing Properties");
    }

    const propertiesEndIndex = command.indexOf("}", propertiesIndex);
    if (propertiesEndIndex === -1) {
      throw new Error("Invalid command format: missing end of Properties");
    }

    const properties = JSON.parse(command.slice(propertiesIndex, propertiesEndIndex + 1));
    properties.Id = id;

    const updatedCommand = `${command.slice(0, propertiesIndex)}${JSON.stringify(
      blockData
    )}${JSON.stringify(properties)}${command.slice(propertiesEndIndex + 1)}`;
    return updatedCommand;
  }

  module.exports = updateCommandWithId;
*/
const fs = require('fs');

/**
 * ブロック状態に対応する状態IDをコマンドに追加する
 * @param {string} filePath - ファイルパス
 * @param {Object} idMap - ブロック状態に対応する状態IDのマップ
 */
function updateCommandWithId(filePath, idMap) {
  const contents = fs.readFileSync(filePath, 'utf8');
  const lines = contents.split('\n');

  const updatedLines = lines.map(line => {
    const match = line.match(/execute if block (~ ~ ~ \S+)\[(.*)\] run data modify storage bsc out\.Properties merge value {(.*)}/);
    if (match) {
      const id = idMap[match[3]];
      if (id !== undefined) {
        const updatedProperties = `${match[3]},"Id":${id}`;
        const updatedLine = `execute if block ${match[1]}[${match[2]}] run data modify storage bsc out.Properties merge value {${updatedProperties}}`;
        return updatedLine;
      }
    }
    return line;
  });

  const updatedContents = updatedLines.join('\n');
  fs.writeFileSync(filePath, updatedContents);
}

module.exports = updateCommandWithId;
