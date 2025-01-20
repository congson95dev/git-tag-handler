# git-handler

This repo contain scripts to:
- Create tag in multiple repo
- Delete tag in multiple repo
- Create PR in multiple repo

For example: <br>
You have multiple repo with the folder structure as below:

    .
    ├── ...
    ├── prefix-folder
    │   ├── repo-1
    │   ├── repo-2
    │   └── ...
    ├── git-handler
    └── ...


Steps:<br>
- Changing the configuration.
- Grant permission: <br>
    Run `chmod +x create_tag.sh` and `chmod +x delete_tag.sh`
- Run the scripts:
    Run `./create_tag.sh` or `./delete_tag.sh` or etc...

Note:

If you want to run `create_pr.sh`, you will need to run this command to install `gh` first:

``` 
(type -p wget >/dev/null || (sudo apt update && sudo apt-get install wget -y)) \
	&& sudo mkdir -p -m 755 /etc/apt/keyrings \
        && out=$(mktemp) && wget -nv -O$out https://cli.github.com/packages/githubcli-archive-keyring.gpg \
        && cat $out | sudo tee /etc/apt/keyrings/githubcli-archive-keyring.gpg > /dev/null \
	&& sudo chmod go+r /etc/apt/keyrings/githubcli-archive-keyring.gpg \
	&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
	&& sudo apt update \
	&& sudo apt install gh -y \
    && gh version upgrade
```

Then run `gh auth login`

Reference: https://github.com/cli/cli/blob/trunk/docs/install_linux.md