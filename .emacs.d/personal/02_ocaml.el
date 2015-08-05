
;;; Code:

;; merlin
(setq opam-share (substring (shell-command-to-string "opam config var share 2> /dev/null") 0 -1))
(add-to-list 'load-path (concat opam-share "/emacs/site-lisp"))
(require 'merlin)

(add-hook 'tuareg-mode-hook 'merlin-mode)
(add-hook 'caml-mode-hook 'merlin-mode)
(merlin-mode)
(add-to-list 'company-backends 'merlin-company-backend)

;; ocp-indent
(require 'ocp-indent)
(ocp-setup-indent)

(autoload 'tuareg-mode "tuareg")

;;; 02_ocaml.el ends here
