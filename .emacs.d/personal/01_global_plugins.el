
;;; Code:

;; yasnippet
(require 'yasnippet)
(setq yas-snippet-dirs
      '("~/.emacs.d/snippets"
        "~/.emacs.d/yasnippet-snippets"))
(yas-global-mode 1)

;; company
(defun company-my-backend (command &optional arg &rest ignored)
  (pcase command
    (`prefix (when (looking-back "foo>")
               (match-string 0)))
    (`candidates (list "foobar" "foobaz" "foobarbaz"))
    (`meta (format "This value is name %s" arg))))

(autoload 'company-mode "company" nil t)
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)
(setq company-idle-delay 0)


;; popup
(require 'popup)

;; flycheck
(require 'flycheck)
(add-hook 'after-init-hook #'global-flycheck-mode)
(add-hook 'flycheck-mode-hook #'flycheck-cask-setup)
(add-hook 'flycheck-mode-hook 'flycheck-color-mode-line-mode)

;; flycheck tip
(require 'flycheck-tip)
(define-key global-map (kbd "C-c C-n") 'flycheck-tip-cycle)

;; flx-ido mode
(require 'flx-ido)
(ido-mode 1)
(ido-everywhere 1)
(flx-ido-mode 1)
(setq ido-enable-flex-matching t)
(setq ido-use-faces nil)

;; neotree
(require 'neotree)
(global-set-key [(shift f1)] 'neotree-toggle)
(define-key neotree-mode-map "i" #'neotree-enter-vertical-split)
(define-key neotree-mode-map "I" #'neotree-enter-horizontal-split)

;; git-gutter
(require 'git-gutter)
(global-git-gutter-mode +1)
(global-set-key (kbd "C-x C-g") 'git-gutter:toggle)

;; powerline
(require 'powerline)
(powerline-center-theme)

;; highlight-chars
(require 'highlight-chars)
(hc-toggle-highlight-hard-spaces)
(hc-toggle-highlight-tabs)
(hc-toggle-highlight-trailing-whitespace)

;; 80 column rules
(require 'column-enforce-mode)
(add-hook 'prog-mode-hook 'column-enforce-mode)

;; rainbow delimiter
(require 'rainbow-delimiters)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

;; smartparens
(electric-pair-mode 1)
(require 'smartparens-config)

;;; 01_global_plugins.el ends here
