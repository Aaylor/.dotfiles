
;;; Code:


(load "~/.emacs.d/personal/00_global.el")
(load "~/.emacs.d/personal/01_global_plugins.el")

(defun my-set-tab-mode ()
  (when (or (string-match ".ml$" buffer-file-name)
            (or (string-match ".mli$" buffer-file-name)
                (or (string-match ".mll$" buffer-file-name)
                    (string-match ".mly$" buffer-file-name))))
    (load "~/.emacs.d/personal/02_ocaml.el"))

  (when (string-match ".scala$" buffer-file-name)
    (load "~/.emacs.d/personal/03_scala.el"))

  (when (or (string-match ".c$" buffer-file-name)
            (string-match ".h$" buffer-file-name))
    (load "~/.emacs.d/personal/04_c.el"))

  (when (string-match ".v$" buffer-file-name)
    (load "~/.emacs.d/personal/05_coq.el"))

  (when (string-match ".tex$" buffer-file-name)
    (load "~/.emacs.d/personal/06_latex.el"))

  (when (string-match ".html" buffer-file-name)
    (load "~/.emacs.d/personal/07_web.el"))
  )

(load "~/.emacs.d/personal/08_org.el")
(add-hook 'find-file-hook 'my-set-tab-mode)

;;; configuration-loader.el ends here
