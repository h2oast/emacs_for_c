;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;
;;                                        emacs settings for a c/c++ developer
;;
;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(require 'package)

;; check for emacs version requirement
(let ((minver "26.3"))
  (when (version< emacs-version minver)
    (error "Your Emacs is too old -- this configuration requires VERSION %s or higher" minver)))

;; add extension load path 
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(require 'init_elpa)
(require 'init_site-lisp)
(require 'init_ecb)
(require 'init_cscope)
