;;; Compiled snippets and support files for `js2-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'js2-mode
                     '(("while" "while (${1:true}) { ${0:`(!%!)`} }" "while" nil nil nil "/home/taylor/.emacs.d/snippets/js2-mode/while" nil nil)
                       ("var" "var ${1:name} = ${0:`%`};" "var ... = ...;" nil nil nil "/home/taylor/.emacs.d/snippets/js2-mode/var" nil nil)
                       ("try" "try {\n	`%`$0\n} catch (${1:err}) {\n	${2:// Do something}\n}" "try-catch block" nil nil nil "/home/taylor/.emacs.d/snippets/js2-mode/try" nil nil)
                       ("r" "return $0;" "return ..." nil nil nil "/home/taylor/.emacs.d/snippets/js2-mode/return" nil nil)
                       ("require" "require(`%`$0)`(if (eolp) \";\")`" "require(\"...\")" nil nil nil "/home/taylor/.emacs.d/snippets/js2-mode/require" nil "require")
                       ("req"
                        (progn
                          (%alias "require"))
                        "require(\"...\")" nil nil nil "/home/taylor/.emacs.d/snippets/js2-mode/req" nil "req")
                       ("pu" "`(unless (eq (char-before) ?.) \".\")`push(`(%1)`$0)`(if (eolp) \";\")`" "arr.push(elt)" nil nil nil "/home/taylor/.emacs.d/snippets/js2-mode/push" nil nil)
                       (":" "${1:key}: ${0:value}" "...: ..." nil nil nil "/home/taylor/.emacs.d/snippets/js2-mode/property" nil nil)
                       ("m" "${1:method}($2) {\n    `%`$0\n}" "method() { ... }" nil nil nil "/home/taylor/.emacs.d/snippets/js2-mode/method" nil nil)
                       ("mapfu" "`(unless (eq (char-before) ?.) \".\")`map(function(${1:item}, ${2:i}, ${3:arr}) {\n    `(!%!)`$0\n})`(if (eolp) \";\")`" "arr.map(function(item, i, arr) {...})" nil nil nil "/home/taylor/.emacs.d/snippets/js2-mode/map-function" nil nil)
                       ("map=>" "`(unless (eq (char-before) ?.) \".\")`map((${1:item}, ${2:i}, ${3:arr}) => `(if (> (%lines %) 1) (concat \"{ \" (!%!) \" }\") %)`$0)`(if (eolp) \";\")`" "arr.map((item, i, arr) => {...})" nil nil nil "/home/taylor/.emacs.d/snippets/js2-mode/map-arrow" nil nil)
                       ("map" "`(unless (eq (char-before) ?.) \".\")`map($0)`(if (eolp) \";\")`" "arr.map(...)" nil nil nil "/home/taylor/.emacs.d/snippets/js2-mode/map" nil nil)
                       ("log" "console.log(`(%1)`$0)`(if (eolp) \";\")`" "console.log(\"...\");" nil nil nil "/home/taylor/.emacs.d/snippets/js2-mode/log" nil nil)
                       ("let" "let ${1:name} = ${0:`%`};" "let ... = ...;" nil nil nil "/home/taylor/.emacs.d/snippets/js2-mode/let" nil nil)
                       ("/**" "/**\n * ${0:`(if % (s-replace \"\\n\" \"\\n * \" %))`}\n */" "/** ... */" nil nil nil "/home/taylor/.emacs.d/snippets/js2-mode/jsdoc" nil nil)
                       ("it" "it('$1', () => {\n  $0\n});" "it" nil nil nil "/home/taylor/.emacs.d/snippets/js2-mode/it" nil nil)
                       ("iof" "`(unless (eq (char-before) ?.) \".\")`indexOf(${1:`(or (%1) \"elt\")`}${2: ${3:fromIndex}})`(if (eolp) \";\")`" "arr.indexOf(elt, fromIndex)" nil nil nil "/home/taylor/.emacs.d/snippets/js2-mode/indexOf" nil nil)
                       ("import" "import ${1:Object} from '${2:./$3}';" "import ... from ...;" nil nil nil "/home/taylor/.emacs.d/snippets/js2-mode/import" nil "import")
                       ("imp"
                        (progn
                          (%alias "import"))
                        "import ... from ...;" nil nil nil "/home/taylor/.emacs.d/snippets/js2-mode/imp" nil "imp")
                       ("if" "if (${1:true}) {\n    `%`$0\n}" "if" nil nil nil "/home/taylor/.emacs.d/snippets/js2-mode/if" nil nil)
                       ("id" "`(unless (eq (char-before) ?.) \".\")`getElementById(${1:id})`(if (eolp) \";\")`" "getElementById" nil nil nil "/home/taylor/.emacs.d/snippets/js2-mode/getElementById" nil nil)
                       ("function" "function ($1) { `(!%!)`$0 }`(if (eolp) \";\")`" "anonymous function"
                        (or
                         (not
                          (%bolp))
                         (region-active-p))
                        nil nil "/home/taylor/.emacs.d/snippets/js2-mode/function_inline" nil "function_inline")
                       ("function" "function ${1:name}($2) {\n    `(!%!)`$0\n}" "named function"
                        (or
                         (%bolp)
                         (region-active-p))
                        nil nil "/home/taylor/.emacs.d/snippets/js2-mode/function" nil "function_block")
                       ("fu"
                        (progn
                          (%alias
                           (if
                               (%bolp)
                               "function_block" "function_inline")))
                        "anonymous/named function" nil nil nil "/home/taylor/.emacs.d/snippets/js2-mode/fu" nil nil)
                       ("forin" "for (${1:key} in ${2:list}) {\n    `%`$0\n}" "for (key in list) { ... }" nil nil nil "/home/taylor/.emacs.d/snippets/js2-mode/forin" nil nil)
                       ("fori" "for (var ${1:i} = ${2:0}; $1 < ${3:${4:arr}.length}; ++$1) {\n    `%`$0\n}" "for (var i = 0; i < arr.length; ++i) { ... }" nil nil nil "/home/taylor/.emacs.d/snippets/js2-mode/fori" nil nil)
                       ("forefu" "`(unless (eq (char-before) ?.) \".\")`forEach(function(${1:item}) {\n    `(!%!)`$0\n})`(if (eolp) \";\")`" "arr.forEach(function(item) {...})" nil nil nil "/home/taylor/.emacs.d/snippets/js2-mode/forEach-function" nil nil)
                       ("fore=>" "`(unless (eq (char-before) ?.) \".\")`forEach(${1:item} => `(if (> (%lines %) 1) (concat \"{ \" (!%!) \" }\") %)`$0)`(if (eolp) \";\")`" "arr.forEach((item) => {...})" nil nil nil "/home/taylor/.emacs.d/snippets/js2-mode/forEach-arrow" nil nil)
                       ("fore" "`(unless (eq (char-before) ?.) \".\")`forEach(`%`$0)`(if (eolp) \";\")`" "arr.forEach(...)" nil nil nil "/home/taylor/.emacs.d/snippets/js2-mode/forEach" nil nil)
                       ("for" "for ($1;$2;$3) {\n    `%`$0\n}" "for (;;)" nil nil nil "/home/taylor/.emacs.d/snippets/js2-mode/for" nil nil)
                       ("fireEvent" "fireEvent('$0')" "fireEvent" nil nil nil "/home/taylor/.emacs.d/snippets/js2-mode/fireEvent" nil nil)
                       ("filfu" "`(unless (eq (char-before) ?.) \".\")`filter(function(${1:item}) {\n    `(!%!)`$0\n})`(if (eolp) \";\")`" "arr.filter(function(item) {...})" nil nil nil "/home/taylor/.emacs.d/snippets/js2-mode/filter-function" nil nil)
                       ("fil=>" "`(unless (eq (char-before) ?.) \".\")`filter(${1:item} => `(if (> (%lines %) 1) (concat \"{ \" (!%!) \" }\") %)`$0)`(if (eolp) \";\")`" "arr.filter(item => {...})" nil nil nil "/home/taylor/.emacs.d/snippets/js2-mode/filter-arrow" nil nil)
                       ("fil" "`(unless (eq (char-before) ?.) \".\")`filter($0)`(if (eolp) \";\")`" "arr.filter(...)" nil nil nil "/home/taylor/.emacs.d/snippets/js2-mode/filter" nil nil)
                       ("exp" "module.exports = `%`$0`(if (eolp) \";\")`" "module.exports = ..." nil nil nil "/home/taylor/.emacs.d/snippets/js2-mode/exports" nil "exports")
                       ("ex" "expect($1).$0" "expect" nil nil nil "/home/taylor/.emacs.d/snippets/js2-mode/expect" nil nil)
                       ("euc" "encodeURIComponent(${1:`%`})`(if (eolp) \";\")`" "encodeURIComponent" nil nil nil "/home/taylor/.emacs.d/snippets/js2-mode/encodeURIComponent" nil nil)
                       ("eu" "encodeURI(${1:`%`})`(if (eolp) \";\")`" "encodeURI" nil nil nil "/home/taylor/.emacs.d/snippets/js2-mode/encodeURI" nil nil)
                       ("else" "else {\n    `%`$0\n}" "else" nil nil nil "/home/taylor/.emacs.d/snippets/js2-mode/else" nil nil)
                       ("doc" "document." "document" nil nil nil "/home/taylor/.emacs.d/snippets/js2-mode/document" nil nil)
                       ("de" "describe('$1', () => {\n  $0\n});" "describe" nil nil nil "/home/taylor/.emacs.d/snippets/js2-mode/describe" nil nil)
                       ("duc" "decodeURIComponent(${1:`%`})`(if (eolp) \";\")`" "decodeURIComponent" nil nil nil "/home/taylor/.emacs.d/snippets/js2-mode/decodeURIComponent" nil nil)
                       ("du" "decodeURI(${1:`%`})`(if (eolp) \";\")`" "decodeURI" nil nil nil "/home/taylor/.emacs.d/snippets/js2-mode/decodeURI" nil nil)
                       ("constructor" "constructor($1) {\n    `%`$0\n}" "constructor() { ... }" nil nil nil "/home/taylor/.emacs.d/snippets/js2-mode/constructor" nil nil)
                       ("con" "const ${1:name} = ${0:`%`};" "const ... = ...;" nil nil nil "/home/taylor/.emacs.d/snippets/js2-mode/const" nil nil)
                       ("class" "class ${1:Name} {\n    $0\n}" "class" nil nil nil "/home/taylor/.emacs.d/snippets/js2-mode/class" nil nil)
                       ("cl"
                        (progn
                          (%alias "class"))
                        "class" nil nil nil "/home/taylor/.emacs.d/snippets/js2-mode/cl" nil "cl")
                       ("be" "before(() => {\n$0\n});" "before" nil nil nil "/home/taylor/.emacs.d/snippets/js2-mode/before" nil nil)
                       ("=>" "$1 => `(if (> (%lines %) 1) (concat \"{ \" (!%!) \" }\") %)`$0" "arrow function" nil nil nil "/home/taylor/.emacs.d/snippets/js2-mode/arrow" nil nil)
                       ("al" "alert(${0:`%`});" "alert" nil nil nil "/home/taylor/.emacs.d/snippets/js2-mode/alert" nil nil)
                       ("ael" "`(unless (eq (char-before) ?.) \".\")`addEventListener('${1:DOMContentLoaded}', () => {\n  `%`$0\n})`(if (eolp) \";\")`" "addEventListener" nil nil nil "/home/taylor/.emacs.d/snippets/js2-mode/addEventListener" nil nil)
                       ("M" "Math.$0" "Math." nil nil nil "/home/taylor/.emacs.d/snippets/js2-mode/Math" nil nil)))


;;; Do not edit! File generated at Sun Feb 14 06:19:48 2021
