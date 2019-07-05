;;; sqlformat-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (sqlformat) "sqlformat" "sqlformat.el" (23839 29722
;;;;;;  555000 0))
;;; Generated autoloads from sqlformat.el
 (autoload 'sqlformat-buffer "sqlformat" nil t)
 (autoload 'sqlformat-region "sqlformat" nil t)
 (autoload 'sqlformat-on-save-mode "sqlformat" nil t)

(autoload 'sqlformat "sqlformat" "\
Reformat SQL in region from BEG to END using `sqlformat-region'.
If no region is active, the current statement (paragraph) is reformatted.
Install the \"sqlparse\" (Python) package to get \"sqlformat\", or
\"pgformatter\" to get \"pg_format\".

\(fn BEG END)" t nil)

;;;***

;;;### (autoloads nil nil ("sqlformat-pkg.el") (23839 29722 561671
;;;;;;  507000))

;;;***

(provide 'sqlformat-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; sqlformat-autoloads.el ends here
