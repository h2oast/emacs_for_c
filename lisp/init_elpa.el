;; load emacs 24's package system. Add MELPA repository.
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
   t)
  (add-to-list
   'package-archives
   '("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
   t)
)



(let ((package-check-signature nil)))


(package-initialize)

(provide 'init_elpa)
