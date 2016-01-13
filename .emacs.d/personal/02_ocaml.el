
;;; Code:

;; merlin
(setq opam-share (substring (shell-command-to-string "opam config var share 2> /dev/null") 0 -1))
(add-to-list 'load-path (concat opam-share "/emacs/site-lisp"))
(require 'merlin)

(add-hook 'tuareg-mode-hook 'merlin-mode)
(add-hook 'caml-mode-hook 'merlin-mode)
(merlin-mode)
(add-to-list 'company-backends 'merlin-company-backend)

;; bindings for OCaml
(global-set-key [(f8)] 'caml-types-show-type)
(global-set-key [(f9)] 'merlin-refresh)
(global-set-key [(f10)] 'merlin-error-next)
(global-set-key [(f12)] 'merlin-restart-process)
(global-set-key [(control c) t] 'merlin-type-expr)
(global-set-key [(ctrl c)(ctrl m)] 'merlin-document)

;; ocp-indent
(require 'ocp-indent)
(ocp-setup-indent)

(autoload 'tuareg-mode "tuareg")

;;; 02_ocaml.el ends here
