from urllib import request, parse
from json import loads

class GitHub(object):
    def __init__(self, owner, repository):
        self.package_url = 'https://api.github.com/repos/' + owner + '/' + repository + '/' + 'releases/latest'
        with request.urlopen(self.package_url) as response:
            self.package = loads(response.read())

    def get_package_version(self):
        return self.package['tag_name']

