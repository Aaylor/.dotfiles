
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


;; flycheck
(require 'flycheck)
(add-hook 'after-init-hook #'global-flycheck-mode)
(add-hook 'flycheck-mode-hook #'flycheck-cask-setup)
(add-hook 'flycheck-mode-hook 'flycheck-color-mode-line-mode)

;; fill column indicator
(require 'fill-column-indicator)
(setq fci-rule-width 1)
(setq fci-rule-color "red")
(define-globalized-minor-mode global-fci-mode fci-mode (lambda () (fci-mode 1)))
(global-fci-mode 1)

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

;; magit
(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "C-c c") 'magit-commit)
(global-set-key (kbd "C-c C-f") 'magit-fetch)
(global-set-key (kbd "C-c C-p") 'magit-pull)
(global-set-key (kbd "C-c M-p") 'magit-push)
(global-set-key (kbd "C-c C-b") 'magit-branch-and-checkout)
(global-set-key (kbd "C-c M-c") 'magit-checkout)
(global-set-key (kbd "C-c C-r") 'magit-rebase)
(global-set-key (kbd "C-c C-a") 'magit-add-change-log-entry)

;; powerline
(require 'powerline)
(powerline-center-theme)

;; sr-speedbar
(require 'sr-speedbar)
(global-set-key (kbd "M-s") 'sr-speedbar-toggle)
(speedbar-add-supported-extension ".bash")

;; smartparens
(electric-pair-mode 1)
(require 'smartparens-config)

;;; 01_global_plugins.el ends here
