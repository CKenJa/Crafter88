/**
 * コマンドから文字列ID、数値ID、ブロック状態、ブロックデータを取得する
 * @param {string} command コマンド
 * @return {Object} 文字列ID、数値ID、ブロック状態、ブロックデータが格納されたオブジェクト
 */
function parseCommand(command) {
    const regex = /execute if block ~ ~ ~ ([\w:.]+)\[([\w=,]+)\] run data modify storage bsc out.Properties merge value {([\w\d":,{}]+)}/;
    const matches = command.match(regex);
    if (!matches) {
      throw new Error('Invalid command: ' + command);
    }

    const idMatches = matches[1].match(/([\w/]+)/);
    if (!idMatches) {
      throw new Error('Invalid block ID: ' + matches[1]);
    }
    const stringID = idMatches[1];

    const dataMatches = matches[3].match(/([\w\d":,{}]+)/);
    if (!dataMatches) {
      throw new Error('Invalid block data: ' + matches[3]);
    }
    const numericID = parseInt(dataMatches[2]);
    const blockState = dataMatches[1];

    return {
      stringID: stringID,
      numericID: numericID,
      blockState: blockState,
      blockData: matches[3]
    };
  }

  module.exports = parseCommand;
