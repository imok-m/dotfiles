(autoload 'rspec-mode "rspec-mode" nil t)
(add-to-list 'auto-mode-alist '("_spec\\.rb$" . rspec-mode))
(custom-set-variables '(rspec-use-rake-flag nil))
