(require 'package)
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

(setq custom-file ".custom.el")
