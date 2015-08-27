(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
        (eval-print-last-sexp)))

(el-get-bundle auto-complete)
(el-get-bundle dired+)
(el-get-bundle flycheck/flycheck :depends (dash pkg-info let-alist cl-lib))
(el-get-bundle highlight-symbol)
(el-get-bundle mooz/js2-mode)
;(el-get-bundle rinari)
(el-get-bundle rspec-mode)
(el-get-bundle web-mode)
(el-get-bundle wgrep)
(el-get-bundle yasnippet)
