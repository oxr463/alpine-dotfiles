#!/bin/sh
set -eu

aports_dir="${APORTS_DIRECTORY}"

pkgname="${1}"

pkgver=$(get_repology_version.py ${pkgname})

cd "${aports_dir}"

repository=$(basename $(dirname $(find . -name ${pkgname})))

pkgdir="${repository}/${pkgname}"

cd "${pkgdir}"

git_branch="${pkgdir}-${pkgver}"

git checkout -b "${git_branch}"

abump "${pkgname}-${pkgver}"

git diff

git add .

git commit -m "${pkgdir}: upgrade to ${pkgver}"

git push -u origin "${git_branch}"

