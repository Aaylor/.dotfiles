;;; Code:

(html-mode)

(when (string-match ".scala.html$" buffer-file-name)
  (electric-indent-mode 0))

(setq tab-width 2)
(local-set-key [tab] 'tab-to-tab-stop)

;;; 07_web.el
