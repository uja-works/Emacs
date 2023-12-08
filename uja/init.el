;; (message "Hi, this is UJA init!")

;; Make the command key the meta (ALT) key on a Mac
(when (eq system-type 'darwin)
  (setq mac-option-modifier 'none
        mac-command-modifier 'meta))

(setq inhibit-startup-message t
      visible-bell t)

;; Turn off some unneeded UI elements
(menu-bar-mode 1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; Setting a theme
;(load-theme 'modus-vivendi t)
(load-theme 'deeper-blue t)

;; Set the title
(setq frame-title-format "Emacs @ %b")

;; Line numbers
(global-display-line-numbers-mode 1)

;; Syntax highlighting
(global-font-lock-mode 1)

;; Font size
(set-face-attribute 'default nil :height 150)



;; Yasnippets
(use-package yasnippet
  :ensure t
  :config
  (yas-global-mode 1))

(setq yas-snippet-dirs '("Emacs/uja_snippets"))



;; AUCTeX
(use-package tex
  :ensure auctex
  :ensure reftex)

(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)

(add-hook 'LaTeX-mode-hook 'visual-line-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)

;; Enable TeX-fold-mode by default in AUCTeX (optional)
(add-hook 'TeX-mode-hook '(lambda () (TeX-fold-mode 1)))

;; AUCTeX configuration for Skim as PDF viewer
(setq TeX-view-program-selection '((output-pdf "PDF Viewer")))
(setq TeX-view-program-list '(("PDF Viewer" "/Applications/Skim.app/Contents/SharedSupport/displayline -b -g %n %o %b")))



;; SLY
(use-package sly
  :ensure t)
(setq inferior-lisp-program "sbcl")



;; Company mode
(use-package company
  :ensure t)
(add-hook 'after-init-hook 'global-company-mode)



;; Org Config
(org-babel-do-load-languages
 'org-babel-load-languages
 '((python . t)
   (julia . t)
   (dot . t)
   (lisp . t))) ;; for Common Lisp

;; Safety: set to t to ask for confirmation before executing code blocks
(setq org-confirm-babel-evaluate nil)

;; old template system
(require 'org-tempo)
(add-to-list 'org-modules 'org-tempo t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(company sly auctex yasnippet)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
