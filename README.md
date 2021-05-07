# .alpine-dotfiles

_Miscellaneous files to assist in maintaining Alpine Linux packages._

[![Repology](https://img.shields.io/badge/repology-alpine--edge-0d597f?style=flat-square
)](https://repology.org/projects/?search=&maintainer=ramage.lucas%40protonmail.com&inrepo=alpine_edge)

## Instructions

### Clone aports repository

```sh
mkdir ~/src
git clone https://gitlab.alpinelinux.org/oxr463/aports.git ~/src/aports
cd ~/src/aports
git remote add upstream https://gitlab.alpinelinux.org/alpine/aports.git
git pull --all
```

### Setup .alpine-dotfiles repository

```sh
git clone https://github.com/oxr463/alpine-dotfiles.git ~/src/alpine-dotfiles
cd ~/src/alpine-dotfiles
docker-compose up -d
docker exec -it alpine-sdk /bin/sh
```

## License

SPDX-License-Identifier: [0BSD](https://spdx.org/licenses/0BSD.html)
