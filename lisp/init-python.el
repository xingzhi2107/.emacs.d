(require 'lsp-python-ms)

(setq lsp-python-ms-auto-install-server t)

(add-hook 'python-mode-hook #'lsp)

(provide 'init-python)
