;; -*- no-byte-compile: t; -*-
;;; tools/magit/packages.el

(package! magit :pin "cf94190410ef163fd102cdbcb67f28599d31eabc")
(when (modulep! +forge)
  (package! forge :pin "a56eb3cbb27c61387d35cbff6b036a2c1bc1559d")
  (package! code-review
    :recipe (:host github
             :repo "doomelpa/code-review"
             :files ("graphql" "code-review*.el"))
    :pin "e4c34fa284da25d8e0bafbae4300f1db5bdcda44"))
