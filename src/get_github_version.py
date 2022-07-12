#!/usr/bin/env python3
from github import GitHub

import os

owner = os.environ['GITHUB_OWNER']
repository = os.environ['GITHUB_REPOSITORY']
github = GitHub(owner, repository)

print(github.get_package_version())

