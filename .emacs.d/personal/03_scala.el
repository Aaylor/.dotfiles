
;;; Code:

;; clean-up whitespace at save
(make-local-variable 'before-save-hook)
(add-hook 'before-save-hook 'whitespace-cleanup)


(global-set-key (kbd "C-c t") 'ensime-print-type-at-point)
(global-set-key (kbd "C-c i") 'ensime-inspect-type-at-point)

;;; 03_scala.el ends here
