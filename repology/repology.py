from urllib import request, parse
from json import loads

class Repology(object):
    def __init__(self, maintainer_name, package_repository):
        _package_query = { 'maintainer' : maintainer_name, 'inrepo' : package_repository, 'status' : 'outdated' }
        self.package_url = 'https://repology.org/api/v1/projects/?' + parse.urlencode(_package_query)
        with request.urlopen(self.package_url) as response:
            self.packages = loads(response.read())

    def get_packages(self):
        return self.packages

    def get_package(self, package_name):
        return self.packages[package_name]

    def get_package_version(self, package_name):
        _package = self.get_package(package_name)
        return _package[0]['version']

