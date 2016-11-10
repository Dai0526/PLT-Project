import os

os.system('rm parser_test.ml parser_test.mli parser_test.cmi parser_test.cmo')
os.system('rm ast_test.cmi')
os.system('rm scanner.ml scanner.cm*')

print('Cleaning finished')
