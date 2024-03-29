;;; Compiled snippets and support files for `go-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'go-mode
                     '(("test" "func Test${1:Feature}(t *testing.T) {\n	$0\n}\n" "test {}" nil nil nil "/home/taylor/.emacs.d/snippets/go-mode/test" nil nil)
                       ("struct" "type ${1:StructName} struct {\n  ${2:VariableName}	${3:Type}\n	$0\n}\n" "struct" nil nil nil "/home/taylor/.emacs.d/snippets/go-mode/struct" nil nil)
                       ("select" "select {\ncase ${1:channel} <- ${2:message}:\n	${3:body}\n$0\n}\n" "select" nil nil nil "/home/taylor/.emacs.d/snippets/go-mode/select" nil nil)
                       ("method" "func (${1:s *Struct}) ${2:MethodName}(${3:arguments}) ${4:ReturnType} {\n	$0\n}\n" "method" nil nil nil "/home/taylor/.emacs.d/snippets/go-mode/method" nil nil)
                       ("make" "make(${1:Type}, ${2:startingSize}, ${3:memorySize})\n$0\n" "make" nil nil nil "/home/taylor/.emacs.d/snippets/go-mode/make" nil nil)
                       ("main" "package main\n\nimport \"fmt\"\n\nfunc main() {\n  $0\n}\n" "main" nil nil nil "/home/taylor/.emacs.d/snippets/go-mode/main" nil nil)
                       ("interface" "type ${1:InterfaceName} interface {\n	${2:MethodName}()	${3:ReturnType}\n	$0\n}\n" "interface" nil nil nil "/home/taylor/.emacs.d/snippets/go-mode/interface" nil nil)
                       ("ifelse" "if ${1:condition} {\n	$0\n} else {\n}\n" "ifelse" nil nil nil "/home/taylor/.emacs.d/snippets/go-mode/ifelse" nil nil)
                       ("if" "if ${1:condition} {\n	$0\n}\n" "if" nil nil nil "/home/taylor/.emacs.d/snippets/go-mode/if" nil nil)
                       ("helloworld" "package main\n\nimport \"fmt\"\n\nfunc main() {\n	fmt.Printf(\"Hello, 世界\\n\")\n}\n$0\n" "helloworld" nil nil nil "/home/taylor/.emacs.d/snippets/go-mode/helloworld" nil nil)
                       ("func" "func ${1:name}(${2:arguments}) ${3:returntype} {\n	$0\n}\n" "func" nil nil nil "/home/taylor/.emacs.d/snippets/go-mode/func" nil nil)
                       ("for" "for ${1:elements} {\n	$0\n}\n" "for" nil nil nil "/home/taylor/.emacs.d/snippets/go-mode/for" nil nil)
                       ("q" "os.Exit(${1:0})$0\n" "exit" nil nil
                        ((yas-indent-line 'fixed))
                        "/home/taylor/.emacs.d/snippets/go-mode/exit" nil "E227B994")
                       ("bench" "func Benchmark${1:Feature}(b *testing.B) {\n	$0\n}\n" "bench" nil nil nil "/home/taylor/.emacs.d/snippets/go-mode/bench" nil nil)))


;;; Do not edit! File generated at Sun Feb 14 06:19:48 2021
