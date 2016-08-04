#!/usr/bin/env python

import shutil, os

from conda_build.metadata import MetaData
from conda_build.build import bldpkg_path

if __name__ == '__main__':
    artifacts_dir = 'artifacts'
    if not os.path.exists(artifacts_dir):
            os.mkdir(artifacts_dir)

    for recipe_dir in ['bison','re2c','clingo']:
        meta = MetaData(recipe_dir)
        shutil.copy(bldpkg_path(meta), artifacts_dir)
