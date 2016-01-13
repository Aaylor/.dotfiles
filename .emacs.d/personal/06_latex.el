
;;; Code:

; Preview mode
;; (latex-preview-pane-mode)

; Auctex w/ latexmk
(require 'auctex-latexmk)
(auctex-latexmk-setup)

; Company math mode
(add-to-list 'company-backends 'company-math-symbols-unicode)

; Latex extra mode
(add-hook 'LaTeX-mode-hook #'latex-extra-mode)

; Pretty symbols
(require 'latex-pretty-symbols) 

;;; 06_latex.ml

