
;;; Code:

;; Trailing spaces removes before save
;(add-hook 'before-save-hook (lambda() (delete-trailing-whitespace)))

(add-to-list 'load-path "~/.emacs.d/colorscheme")
(require 'color-theme-tomorrow)
(color-theme-tomorrow-night-bright)

(setq
 inhibit-startup-message t         ;; remove startup message
 column-number-mode t              ;; display column number
 scroll-conservatively 1           ;; smooth scrolling
 search-highlight t                ;; highlight search
 shell-file-name "zsh"             ;; change the default shell
 query-replace-highlight t         ;; highlight query
 split-height-threshold nil        ;; vertical split
 split-width-threshold 0           ;; vertical split
 compilation-scroll-output 'first-error ;; follow the compilation
 )

(setq-default fill-column 79)       ;; default column width

(fset 'yes-or-no-p 'y-or-n-p) ;; change the yes/no question

(show-paren-mode) ;; display the matched parenthesis

(global-linum-mode 1)

(cond
 ((string-equal system-type "darwin")
  (global-set-key [(meta h)] 'ns-do-hide-emacs)
  (global-set-key [(meta H)] 'ns-do-hide-others)
  (global-set-key [(meta v)] 'yank)
  ;; (global-set-key [(meta s)] 'kill-ring-save)
  (global-set-key [(meta S)] 'write-file)
  (global-set-key [(meta p)] 'ps-print-buffer)
  (global-set-key [(meta o)] 'find-file)))


;(global-set-key [f1] 'next-error)
;(global-set-key [f2] 'previous-error)
;(global-set-key [C-f1] 'kill-buffer)


(set-default 'indent-tabs-mode nil)         ;; tabs are now spaces
(setq-default indent-tabs-mode nil)         ;; tabs are now spaces


(global-set-key [f1]   'comment-dwim)
(global-set-key [f2]   'undo)
(global-set-key [(shift f2)]   'redo)
(global-set-key [f3] 'grep)
(global-set-key [f4]   'goto-line)
(global-set-key [f5]   'compile)
(global-set-key [f6]   'interrupt-and-recompile)
(global-set-key [f7]   'next-error)
(global-set-key [(control f7)]   'previous-error)
(global-set-key [(shift f7)]   'first-error)
(global-set-key [(control f10)] 'merlin-error-prev)
(global-set-key [(ctrl x)(up)] 'beginning-of-buffer)
(global-set-key [(ctrl x)(down)] 'end-of-buffer)
(global-set-key [(ctrl x)(end)] 'save-buffers-kill-terminal)
(global-set-key [(control tab)] 'company-complete)

(global-set-key [(meta f10)] 'toggle-frame-fullscreen)

;; Auto-kill compilation process and recompile
(defun interrupt-and-recompile ()
  "Interrupt old compilation, if any, and recompile."
  (interactive)
  (ignore-errors
    (process-kill-without-query
     (get-buffer-process
      (get-buffer "*compilation*"))))
  (ignore-errors
    (kill-buffer "*compilation*"))
  (recompile)
)

;; change dictionary
(setq-default ispell-program-name "aspell")

;; remove useless bars
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))

;; server mode
(load-library "server")
(unless (server-running-p) (server-start))


(global-hl-line-mode 1)


;;; 00_global.el ends here
