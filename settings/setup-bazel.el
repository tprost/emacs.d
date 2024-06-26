;; (straight-use-package 'starlark)

(straight-use-package 'bazel)

(add-to-list 'auto-mode-alist '("/Tiltfile\\(?:\\..*\\)?\\'"
																. bazel-starlark-mode))
(add-to-list 'auto-mode-alist '("/Tiltfile\\(?:\\..*\\|-[^/]*\\)?\\'"
                                . bazel-starlark-mode))

(provide 'setup-bazel)
