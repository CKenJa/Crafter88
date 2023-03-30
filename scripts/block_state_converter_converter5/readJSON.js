const fs = require('fs');

function readJSON(filePath) {
  const jsonData = fs.readFileSync(filePath, 'utf8');
  return JSON.parse(jsonData);
}

module.exports = readJSON;
