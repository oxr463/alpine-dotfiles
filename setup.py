from setuptools import setup, find_packages

VERSION = '0.0.1'

setup(name='repology',
      version=VERSION,
      url='https://github.com/oxr463/alpine-dotfiles',
      license='BSD0',
      author='Lucas Ramage',
      author_email='ramage.lucas@protonmail.com',
      packages=find_packages(),
      include_package_data=True,
      zip_safe=True
)

