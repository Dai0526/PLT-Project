import os

os.system('rm parser.ml parser.mli parser.cmi parser.cmo')
os.system('rm ast.cmi')
os.system('rm scanner.ml scanner.cm*')

print('Cleaning finished')
