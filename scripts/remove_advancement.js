const RootFolderPath = '../Crafter88/data/minecraft/'
const fs = require('fs');
const path = require('path');
const FolderPaths = [
    'advancements/recipes/brewing',
    'advancements/recipes/buildiing_blocks',
    'advancements/recipes/combat',
    'advancements/recipes/decorationns',
    'advancements/recipes/food',
    'advancements/recipes/misc',
    'advancements/recipes/redstone',
    'advancements/recipes/tools',
    'advancements/recipes/transportation',
    'advancements/adventure',
    'advancements/end',
    'advancements/husbandry',
    'advancements/nether',
    'advancements/story',
    'recipes'
]

FolderPaths.forEach(Folder => {
    let FolderPath = path.join(RootFolderPath, Folder)
    fs.readdirSync(FolderPath).forEach(File => {
        fs.writeFileSync(path.join(FolderPath, File), JSON.stringify({}))
    })
})
