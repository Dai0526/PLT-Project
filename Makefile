.PHONY: tape.native

tape.native :
	ocamlbuild -use-ocamlfind -pkgs llvm,llvm.analysis -cflags -w,+a-4 \
    tape.native

.PHONY: clean
clean:
	ocamlbuild -clean
	rm -rf scanner.ml parser.ml parser.mli
	rm -rf *.cmx *.cmi *.cmo *.cmx *.o
	rm -rf testall.log *.diff  
OBJS = ast.cmx codegen.cmx parser.cmx scanner.cmx semant.cmx tape.cmx

tape: $(OBJS)
	ocamlfind ocamlopt -linkpkg -package llvm -package llvm.analysis $(OBJS) -o tape

scanner.ml: scanner.mll
	ocamllex scanner.mll

parser.ml parser.mli: parser.mly
	ocamlyacc parser.mly

%.cmo: %.ml
	ocamlc -c $<

%.cmi: %.mli
	ocamlc -c $<

%.cmx: %.ml
	ocamlfind ocamlopt -c -package llvm $<

ast.cmo:
ast.cmx:
codegen.cmo: ast.cmo
codegen.cmx: ast.cmx
tape.cmo   : semant.cmo scanner.cmo parser.cmi codegen.cmo ast.cmo
tape.cmx   : semant.cmx scanner.cmx parser.cmx codegen.cmx ast.cmx
parser.cmo : ast.cmo parser.cmi
parser.cmx : ast.cmx parser.cmi
scanner.cmo: parser.cmi
scanner.cmx: parser.cmx
semant.cmo : ast.cmo
semant.cmx : ast.cmx
parser.cmi : ast.cmo


TARFILES = ast.ml codegen.ml Makefile microc.ml parser.mly README scanner.mll \
		   semant.ml testall.sh $(TESTFILES:%=tests/%)
tape-llvm.tar.gz: $(TARFILES)
	cd .. && tar czf tape-llvm/tape-llvm.tar.gz \
	$(TARFILES:%=tape-llvm/%) 
