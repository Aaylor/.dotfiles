
;;; Code:

;; clean-up whitespace at save
(make-local-variable 'before-save-hook)
(add-hook 'before-save-hook 'whitespace-cleanup)


;;; 03_scala.el ends here
