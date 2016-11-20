import os

os.system('menhir --interpret --interpret-show-cst ./../parser.mly > menhiroutput.txt 2>&1')

os.system('cat menhiroutput.txt')

