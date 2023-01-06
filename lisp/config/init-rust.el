(require 'rustic)
(require 'racer)

(setq lsp-rust-server 'rust-analyzer)

(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)
(add-hook 'racer-mode-hook #'company-mode)

(setq racer-rust-src-path "/Users/zhenguo/.rustup/toolchains/stable-x86_64-apple-darwin/lib/rustlib/src/rust/library")

(provide 'init-rust)
