(message "Hi, this is UJA init!")

;; Make the command key the meta (ALT) key
(when (eq system-type 'darwin)
  (setq mac-option-modifier 'none
        mac-command-modifier 'meta))

