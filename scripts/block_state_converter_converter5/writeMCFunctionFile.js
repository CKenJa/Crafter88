const fs = require('fs');

function writeMCFunctionFile(path, data) {
  fs.writeFileSync(path, data);
}

module.exports = writeMCFunctionFile;