;; load-path を追加する関数を定義
(defun add-to-load-path (&rest paths)
  (let (path)
    (dolist (path paths paths)
      (let ((default-directory
	      (expand-file-name (concat user-emacs-directory path))))
	(add-to-list 'load-path default-directory)
	(if (fboundp 'nomal-top-level-add-subdirs-to-load-path)
	    (normal-top-level-add-subdirs-to-load-path))))))

;; 引数のディレクトリとそのサブディレクトリを load-path に追加
(add-to-load-path "elisp" "conf" "public-repos")

;; https://gist.github.com/zqwell/1021706/raw/b9aff51e7e40afa7abb3c7d6ef7708993ad93b04/init-loader.el
(require 'init-loader)
(init-loader-load "~/.emacs.d/conf")
