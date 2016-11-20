import os

os.system('ocamllex scanner.mll')
print 'run scanner.mll\n'
os.system('ocamlyacc parser.mly')
print 'run parser\n'
os.system('ocamlc -c ast.ml')
print 'run ast.ml\n'
os.system('ocamlc -c parser.mli')
print 'run parser.mli\n'
os.system('ocamlc -c scanner.ml')
print 'run scanner.ml\n'
os.system('ocamlc -c parser.ml')
print 'run parser.ml\n'

