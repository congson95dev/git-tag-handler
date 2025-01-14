# git-tag-handler

This repo contain scripts to:
- Create tag in multiple repo
- Delete tag in multiple repo

For example: <br>
You have multiple repo with the folder structure as below:

    .
    ├── ...
    ├── prefix-folder
    │   ├── repo-1
    │   ├── repo-2
    │   └── ...
    ├── git-tag-handler
    └── ...


Steps:<br>
- Changing the configuration.
- Grant permission: <br>
    Run `chmod +x create_tag.sh` and `chmod +x delete_tag.sh`
- Run the scripts:
    Run `./create_tag.sh` or `./delete_tag.sh`