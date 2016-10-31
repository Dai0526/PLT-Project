import os

os.system('ocamllex scanner.mll')
print 'run scanner.mll\n'
os.system('ocamlyacc parser_test.mly')
print 'run parser.mly\n'
os.system('ocamlc -c ast_test.mli')
print 'run ast_test.mli\n'
os.system('ocamlc -c parser_test.mli')
print 'run parser_test.mli\n'
os.system('ocamlc -c scanner.ml')
print 'run scanner.ml\n'
os.system('ocamlc -c parser_test.ml')
print 'run parser_test.ml\n'

