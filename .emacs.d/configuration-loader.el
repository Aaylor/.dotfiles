
;;; Code:


(load "~/.emacs.d/personal/00_global.el")
(load "~/.emacs.d/personal/01_global_plugins.el")

(require 'dockerfile-mode)
(add-to-list 'auto-mode-alist '("Dockerfile\\'" . dockerfile-mode))


(defun pfolder (file)
  (concat "~/.emacs.d/personal/" file))

(defun suffix-match (pattern)
  (string-match pattern buffer-file-name))

(defun loader (patterns file)
  (when (some #'suffix-match patterns)
    (load (pfolder file))))

(defun check-filetype ()
  (loader '("\\.ml$" "\\.mli$" "\\.mll$" "\\.mly$") "02_ocaml.el")
  (loader '("\\.scala$") "03_scala.el")
  (loader '("\\.c$" "\\.h$") "04_c.el")
  (loader '("\\.v$") "05_coq.el")
  (loader '("\\.tex$") "06_latex.el")
  (loader '("\\.html$") "07_web.el")
  (loader '("\\.py$") "09_python.el")
  (loader '("\\.lua$") "10_lua.el")
  (loader '("\\.hs$") "11_haskell.el")
  )

(load "~/.emacs.d/personal/08_org.el")
(add-hook 'find-file-hook 'check-filetype)

;;; configuration-loader.el ends here
