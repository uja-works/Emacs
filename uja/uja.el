;;; uja.el --- Description -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2024 Uwe Jaekel
;;
;; Author: Uwe Jaekel <uwe.jaekel@gmail.com>
;; Maintainer: Uwe Jaekel <uwe.jaekel@gmail.com>
;; Created: Februar 04, 2024
;; Modified: Februar 04, 2024
;; Version: 0.0.1
;; Keywords: abbrev bib c calendar comm convenience data docs emulations extensions faces files frames games hardware help hypermedia i18n internal languages lisp local maint mail matching mouse multimedia news outlines processes terminals tex tools unix vc wp
;; Homepage: https://github.com/uwejaekel/uja
;; Package-Requires: ((emacs "24.3"))
;;
;; This file is not part of GNU Emacs.
;;
;;; Commentary:
;;
;;  Description
;;
;;; Code:

 (defun uja-test ()
  (interactive)
  "Hi there!")

(defun uja-connect-ai ()
  (interactive)
  (dired "/ssh:jaekel@login1.ai.hs-koblenz.de:/work/jaekel/"))

;;; Emacs Load Path
(setq load-path (cons "~/Dropbox/Dropsync/Emacs" load-path))

;;; Copilot configuration
(defun uja-copilot-off ()
  (interactive)
  (copilot-mode -1))
(defun uja-copilot-on ()
  (interactive)
  (copilot-mode 1))
(uja-copilot-off)


(provide 'uja)
;;; uja.el ends here
