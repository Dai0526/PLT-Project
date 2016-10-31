import os

os.system('ocamllex scanner.mll')
os.system('ocamlyacc parser_test.mly')
os.system('ocamlc -c ast_test.mli')
os.system('ocamlc -c parser_test.mli')
os.system('ocamlc -c scanner.ml')
os.system('ocamlc -c parser_test.ml')

