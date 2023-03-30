const fs = require('fs');

function saveJSON(filePath, data) {
  fs.writeFileSync(filePath, JSON.stringify(data));
}

module.exports = saveJSON;