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

;; packages need to be installed manually first after you installed emacs
;; setup package except elpa, since others depend on elpa
(defun develop_initialize()
    "develop environment initialization for c/c++"
    (require 'init_zenburn-theme)
    (require 'init_ecb)
    (require 'init_cscope)
    (require 'init_company))

;; emacs builtin settings
(require 'init_emacs)
(require 'init_elpa)
(require 'init_site-lisp)

;; after you install all the packages need, then can this initialize can act as expected
(develop_initialize)


