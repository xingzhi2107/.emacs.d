(require 'company)
(add-hook 'after-init-hook 'global-company-mode)

(push 'company-yasnippet company-backends)

(global-set-key (kbd "M-c") 'completion-at-point)

(provide 'init-company)
