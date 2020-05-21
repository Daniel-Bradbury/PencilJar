import re
import sys
def patch(patchline):
  with open(re.findall('IN (.*) REPLACE', patchline)[0], 'r+') as codefile:
    codefilecontent=codefile.read()
    old = re.findall('REPLACE (.*) WITH', patchline)[0]
    new = re.findall('WITH (.*);', patchline)[0]
  with open(re.findall('IN (.*) REPLACE', patchline)[0], 'w+') as codefile:
    codefile.write(codefilecontent.replace(old, new))
patchfile=open("PATCH", "r")
patchfilecontent=patchfile.readlines()
for x in range(0, len(patchfilecontent)):
  print(patchfilecontent[x-1])
  patch(patchfilecontent[x-1])