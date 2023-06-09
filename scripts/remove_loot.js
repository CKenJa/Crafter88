const fs = require('fs');
const path = require('path');
const FileType = {
    File: 'file',
    Directory: 'directory',
    Unknown: 'unknown'
}

/**
 * ファイルの種類を取得する
 * @param {string} path パス
 * @return {FileType} ファイルの種類
 */
const getFileType = path => {
    try {
      const stat = fs.statSync(path);

      switch (true) {
        case stat.isFile():
          return FileType.File;

        case stat.isDirectory():
          return FileType.Directory;

        default:
          return FileType.Unknown;
      }

    } catch(e) {
      return FileType.Unknown;
    }
}

/**
 * 指定したディレクトリ配下のすべてのファイルをリストアップする
 * @param {string} dirPath 検索するディレクトリのパス
 * @return {Array<string>} ファイルのパスのリスト
 */
const listFiles = dirPath => {
    const ret = [];
    const paths = fs.readdirSync(dirPath);

    paths.forEach(a => {
      const path = `${dirPath}/${a}`;

      switch (getFileType(path)) {
        case FileType.File:
          ret.push(path);
          break;

        case FileType.Directory:
          ret.push(...listFiles(path));
          break;

        default:
          /* noop */
      }
    })

    return ret;
  };

const list = listFiles('../Crafter88/data/minecraft/loot_tables');

list.forEach(listJson => {
    JSON.parse(fs.readFileSync(listJson, 'utf8')).files.forEach(File => {
        fs.writeFileSync(path.join(path.dirname(listJson), File), JSON.stringify({}))
    })
})
