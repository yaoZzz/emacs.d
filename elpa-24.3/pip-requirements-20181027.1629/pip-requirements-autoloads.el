;;; pip-requirements-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (pip-requirements-mode pip-requirements-auto-complete-setup)
;;;;;;  "pip-requirements" "pip-requirements.el" (23839 29702 802000
;;;;;;  0))
;;; Generated autoloads from pip-requirements.el

(add-to-list 'auto-mode-alist `(,(rx ".pip" string-end) . pip-requirements-mode))

(add-to-list 'auto-mode-alist `(,(rx "requirements" (zero-or-more anything) ".txt" string-end) . pip-requirements-mode))

(add-to-list 'auto-mode-alist `(,(rx "requirements.in") . pip-requirements-mode))

(autoload 'pip-requirements-auto-complete-setup "pip-requirements" "\
Setup Auto-Complete for Pip Requirements.

See URL `https://github.com/auto-complete/auto-complete' for
information about Auto Complete.

\(fn)" nil nil)

(autoload 'pip-requirements-mode "pip-requirements" "\
Major mode for editing pip requirements files.

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("pip-requirements-pkg.el") (23839 29702
;;;;;;  809659 44000))

;;;***

(provide 'pip-requirements-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; pip-requirements-autoloads.el ends here
