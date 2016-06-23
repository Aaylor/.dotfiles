
;;; Code:

;; Remove backup files
(setq make-backup-files nil)
(setq backup-inhibited t)
(setq auto-save-default nil)

;; Set environment to utf-8
(set-language-environment 'utf-8)
(setq locale-coding-system 'utf-8)
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(setq-default buffer-file-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)

(cond
 ((string-equal system-type "darwin")
  (set-face-bold 'bold nil) ;; no bold font
  (set-frame-font "Fira Mono 11")))

;;; pre-configuration.el ends here
