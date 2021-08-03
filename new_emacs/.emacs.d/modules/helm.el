(use-package helm :ensure t
  :init
  (helm-mode t)
  :bind
  (("M-x"     . helm-M-x)
   ("C-x b"   . helm-mini)
   ("C-x C-f" . helm-find-files)
   ("C-x C-b" . helm-buffers-list)
   ("M-s"     . helm-occur)
   ("M-y"     . helm-show-kill-ring)
   ("C-h f"   . helm-apropos)
   ("C-h g"   . helm-google-suggest))
  :config
  ;; Aesthetics
  (setq helm-autoresize-mode t)
  (setq helm-split-window-in-side-p t)
  ;; Fuzzy matching
  (setq helm-recentf-fuzzy-match       t
        helm-buffers-fuzzy-matching    t
        helm-recentf-fuzzy-match       t
        helm-buffers-fuzzy-matching    t
        helm-locate-fuzzy-match        t
        helm-apropos-fuzzy-match       t
        helm-lisp-fuzzy-completion     t
        helm-candidate-number-limit    100)
  )

(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action)

(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action)

(define-key helm-map (kbd "C-z") 'helm-select-action)
