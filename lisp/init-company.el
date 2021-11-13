(require 'company)
(add-hook 'after-init-hook 'global-company-mode)

(push 'company-yasnippet company-backends)

(global-set-key (kbd "M-c") 'company-complete)

(provide 'init-company)
