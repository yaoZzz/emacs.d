;;; init.el --- Load the full configuration -*- lexical-binding: t -*-
;;; Commentary:

;; This file bootstraps the configuration, which is divided into
;; a number of other files.

;;; Code:

;; Produce backtraces when errors occur
(setq debug-on-error t)

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
;;(require 'init-benchmarking) ;; Measure startup time

;;(defconst *spell-check-support-enabled* nil) ;; Enable with t if you prefer
;;(defconst *is-a-mac* (eq system-type 'darwin))

;;----------------------------------------------------------------------------
;; Bootstrap config
;;----------------------------------------------------------------------------
;;(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(require 'init-utils)
(require 'init-site-lisp) ;; Must come before elpa, as it may provide package.el
;; Calls (package-initialize)
(require 'init-elpa)      ;; Machinery for installing required packages
;;(require 'init-exec-path) ;; Set up $PATH

;;----------------------------------------------------------------------------
;; Allow users to provide an optional "init-preload-local.el"
;;----------------------------------------------------------------------------
;;(require 'init-preload-local nil t)

;;----------------------------------------------------------------------------
;; Load configs for specific features and modes
;;----------------------------------------------------------------------------

;;(require-package 'diminish)
;;(maybe-require-package 'scratch)
;;(require-package 'command-log-mode)

;;(require 'init-frame-hooks)
;;(require 'init-xterm)
;;(require 'init-themes)
;;(require 'init-osx-keys)
;;(require 'init-gui-frames)
;;(require 'init-dired)
;;(require 'init-isearch)
;;(require 'init-grep)
;;(require 'init-uniquify)
(require 'init-ibuffer)
;;(require 'init-flycheck)

;;(require 'init-recentf)
;;(require 'init-smex)
(require 'init-ivy)
;;(require 'init-helm)
;;(require 'init-hippie-expand)
;;(require 'init-company)
;;(require 'init-windows)
;;(require 'init-sessions)
;;(require 'init-mmm)

;;(require 'init-editing-utils)
;;(require 'init-whitespace)

;;(require 'init-vc)
;;(require 'init-darcs)
;;(require 'init-git)
;;(require 'init-github)

;;(require 'init-projectile)

;;(require 'init-compile)
;;(require 'init-crontab)
;;(require 'init-textile)
;;(require 'init-markdown)
;;(require 'init-csv)
;;(require 'init-erlang)
;;(require 'init-javascript)
;;(require 'init-php)
;;(require 'init-org)
;;(require 'init-nxml)
;;(require 'init-html)
;;(require 'init-css)
;;(require 'init-haml)
;;(require 'init-http)
(require 'init-python)
;;(require 'init-haskell)
;;(require 'init-elm)
;;(require 'init-purescript)
;;(require 'init-ruby)
;;(require 'init-rails)
(require 'init-sql)
;;(require 'init-rust)
;;(require 'init-toml)
;;(require 'init-yaml)
;;(require 'init-docker)
;;(require 'init-terraform)
;;(require 'init-nix)
;;(maybe-require-package 'nginx-mode)

;;(require 'init-paredit)
;;(require 'init-lisp)
;;(require 'init-slime)
;;(require 'init-clojure)
;;(require 'init-clojure-cider)
;;(require 'init-common-lisp)

;;(when *spell-check-support-enabled*
;;  (require 'init-spelling))

;;(require 'init-misc)

;;(require 'init-folding)
;;(require 'init-dash)

;;(require 'init-twitter)
;; (require 'init-mu)
;;(require 'init-ledger)
;; Extra packages which don't require any configuration

;;(require-package 'gnuplot)
;;(require-package 'lua-mode)
;;(require-package 'htmlize)
;;(require-package 'dsvn)
;;(when *is-a-mac*
;;  (require-package 'osx-location))
;;(unless (eq system-type 'windows-nt)
;;  (maybe-require-package 'daemons))
;;(maybe-require-package 'dotenv-mode)

;;(when (maybe-require-package 'uptimes)
;;  (setq-default uptimes-keep-count 200)
;;  (add-hook 'after-init-hook (lambda () (require 'uptimes))))


;;----------------------------------------------------------------------------
;; Allow access from emacsclient
;;----------------------------------------------------------------------------
(add-hook 'after-init-hook
          (lambda ()
            (require 'server)
            (unless (server-running-p)
              (server-start))))

;;----------------------------------------------------------------------------
;; Variables configured via the interactive 'customize' interface
;;----------------------------------------------------------------------------
;;(when (file-exists-p custom-file)
;;  (load custom-file))


;;----------------------------------------------------------------------------
;; Locales (setting them earlier in this file doesn't work in X)
;;----------------------------------------------------------------------------
(require 'init-locales)


;;----------------------------------------------------------------------------
;; Allow users to provide an optional "init-local" containing personal settings
;;----------------------------------------------------------------------------
(require 'init-local nil t)



(provide 'init)

(setq default-tab-width 4)
(setq indent-tabs-mode nil)
(setq c-basic-offset 4)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (sqlformat company-anaconda anaconda-mode pip-requirements ivy-xref projectile diminish counsel ivy ibuffer-vc fullframe))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
 ;; Local Variables:
;; coding: utf-8
;; no-byte-compile: t
;; End:
;;; init.el ends here
