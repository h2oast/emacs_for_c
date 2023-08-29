;; DO NOT let emacs touch this manually maintained file
(setq custom-file ".custom.el")

;; Extra package sources
(require 'package)
(add-to-list 'package-archives '("gnu"   . "https://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;; Make sure use-package has been installed properly
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package)

;; eglot - a lsp client for emacs
(use-package eglot
  :ensure t
  :config
  (add-to-list 'eglot-server-programs '((c-mode c++-mode) "clangd"))
  (add-hook    'c-mode-hook           'eglot-ensure)
  (add-hook    'c++-mode-hook         'eglot-ensure))

;; company
(use-package company
  :ensure t)
(use-package yasnippet
  :ensure t)

(use-package magit
  :ensure t)

; (use-package solarized-theme
;  :ensure t)
; (load-theme 'solarized-zenburn t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; display column number
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(column-number-mode t)
