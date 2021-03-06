(autoload 'web-mode "web-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.erb$"   . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?$" . web-mode))
(defun web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-attr-indent-offset nil)
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
  (setq web-mode-sql-indent-offset 2)
  (setq indent-tabs-mode nil)
  (setq tab-width 2))
(add-hook 'web-mode-hook 'web-mode-hook)
(add-hook 'web-mode-hook 'flycheck-mode)
(add-hook 'web-mode-hook 'highlight-symbol-mode)
