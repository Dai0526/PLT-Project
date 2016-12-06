import os

os.system('rm parser.ml parser.mli parser.cmi parser.cmo')
os.system('rm ast.cmi ast.cmo')
os.system('rm scanner.ml scanner.cm*')

print('Cleaning finished')

os.system('rm *.err *.diff *.ll')
print('Clean the testing file')
