
;;; Code:

(load "~/.emacs.d/pre-configuration.el")
(load "~/.emacs.d/packages-loader.el")
(load "~/.emacs.d/configuration-loader.el")


;;; .emacs ends here

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(face-font-family-alternatives
   (quote
    (("Inconsolata for Powerline")
     ("Monospace" "courier" "fixed")
     ("courier" "CMU Typewriter Text" "fixed")
     ("Sans Serif" "helv" "helvetica" "arial" "fixed")
     ("helv" "helvetica" "arial" "fixed"))))
 '(ns-alternate-modifier (quote none))
 '(ns-command-modifier (quote meta))
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(tool-bar-mode nil)
 '(tooltip-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Anonymous Pro for Powerline" :foundry "unknown" :slant normal :weight normal :height 113 :width normal))))
 '(bold ((t nil)))
 '(italic ((t nil))))
