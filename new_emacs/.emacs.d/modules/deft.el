(use-package deft
  :ensure t
  :init
    (setq deft-extensions '("org" "md" "txt")
          deft-use-filename-as-title t))

(use-package zetteldeft
  :ensure t
  :after deft
  :config (zetteldeft-set-classic-keybindings))
