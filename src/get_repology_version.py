#!/usr/bin/env python3
from repology import Repology

import sys

alpine_edge = Repology("ramage.lucas@protonmail.com","alpine_edge")

print(alpine_edge.get_package_version(sys.argv[1]))

