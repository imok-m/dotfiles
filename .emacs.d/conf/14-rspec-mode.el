(autoload 'rspec-mode "rspec-mode" nil t)
(defun rspec-and-ruby-mode ()
  (ruby-mode) ; major-mode
  (rspec-mode) ; minor-mode
)
(add-to-list 'auto-mode-alist '("_spec\\.rb$" . rspec-mode))
(custom-set-variables '(rspec-use-rake-flag nil))
