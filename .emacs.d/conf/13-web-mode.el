(autoload 'web-mode "web-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.erb$"   . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?$" . web-mode))
(defun web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-markup-indent-offset 2))
(add-hook 'web-mode-hook 'web-mode-hook)
