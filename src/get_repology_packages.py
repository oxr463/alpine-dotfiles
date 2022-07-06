#!/usr/bin/env python3
from repology import Repology

import sys

alpine_edge = Repology("ramage.lucas@protonmail.com","alpine_edge")

packages = alpine_edge.get_packages()

for package in packages.keys():
    print(package)

