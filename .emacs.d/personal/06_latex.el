
;;; Code:

; Auctex w/ latexmk
(setq TeX-auto-save t)
(setq-default TeX-master nil)

; Company
(company-auctex-init)
(add-to-list 'company-backends 'company-math-symbols-unicode)

; Latex extra mode
(add-hook 'LaTeX-mode-hook #'latex-extra-mode)

; Pretty symbols
(require 'latex-pretty-symbols)

;;; 06_latex.ml

