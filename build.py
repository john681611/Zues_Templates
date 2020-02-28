from shutil import rmtree
from distutils.dir_util import copy_tree
from os import getcwd
mapFileNames = [
'abel',
'Altis',
'cain',
'Chernarus',
'Chernarus_Summer',
'eden',
'Enoch',
'fallujah',
'Malden',
'noe',
'ProvingGrounds_PMC',
'Sara',
'Shapur_BAF',
'Stratis',
'Takistan',
'utes',
'Zargabad',
'Tanoa',
]
for mapName in mapFileNames:
    base = (getcwd() + '/Zeus_Template_ACE_V7.'+mapName)
    commonFile = (getcwd() +'/Zeus_Template_ACE_V7.VR')
    copy_tree(commonFile, base)
    print('built:'+ base)
print('done!')