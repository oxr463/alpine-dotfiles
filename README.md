# .alpine

_Miscellaneous files to assist in maintaining Alpine Linux packages._

[![Repology](https://img.shields.io/badge/repology-alpine--edge-0d597f?style=flat-square
)](https://repology.org/projects/?search=&maintainer=ramage.lucas%40protonmail.com&inrepo=alpine_edge)

## Instructions

### Clone aports repository

```sh
mkdir -p ~/src
git clone https://gitlab.alpinelinux.org/oxr463/aports.git ~/src/aports
cd ~/src/aports
git remote add upstream https://gitlab.alpinelinux.org/alpine/aports.git
git pull --all
```

### Setup .alpine repository

```sh
git clone https://github.com/oxr463/alpine-dotfiles.git ~/.alpine
cd ~/.alpine
docker-compose run alpine-sdk /bin/sh
```

## License

SPDX-License-Identifier: [0BSD](https://spdx.org/licenses/0BSD.html)

