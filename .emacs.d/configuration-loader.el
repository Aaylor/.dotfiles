
;;; Code:


(load "~/.emacs.d/personal/00_global.el")
(load "~/.emacs.d/personal/01_global_plugins.el")

(defun my-set-tab-mode ()
  (when (or (string-match ".ml$" buffer-file-name)
            (string-match ".mli$" buffer-file-name))
    (load "~/.emacs.d/personal/02_ocaml.el"))

  (when (string-match ".scala$" buffer-file-name)
    (load "~/.emacs.d/personal/03_scala.el"))

  (when (or (string-match ".c$" buffer-file-name)
            (string-match ".h$" buffer-file-name))
    (load "~/.emacs.d/personal/04_c.el"))

  (when (string-match ".v$" buffer-file-name)
    (load "~/.emacs.d/personal/05_coq.el"))
  )


(add-hook 'find-file-hook 'my-set-tab-mode)

;;; configuration-loader.el ends here
