(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "lisp/third-lib" user-emacs-directory))

(require 'init-package)
(require 'init-proxy)

(package-refresh-contents)

;; (package-install 'cnfonts)
(package-install 'ivy)
(package-install 'counsel)
(package-install 'which-key)
(package-install 'magit)
(package-install 'flycheck)
(package-install 'doom-themes)
(package-install 'yasnippet)
(package-install 'yasnippet-snippets)
(package-install 'window-numbering)
(package-install 'editorconfig)
(package-install 'exec-path-from-shell)
(package-install 'lsp-sourcekit)
(package-install 'swift-mode)
(package-install 'term)
(package-install 'lsp-mode)
(package-install 'lsp-ui)
(package-install 'eyebrowse)
(package-install 'company)
(package-install 's)
(package-install 'seq)
(package-install 'dash)
(package-install 'page-break-lines)
(package-install 'bookmark)
;; (package-install 'bing-dict)
(package-install 'org-pomodoro)
(package-install 'lsp-python-ms)
(package-install 'json)
(package-install 'org)
(package-install 'use-package)
(package-install 'rustic)
(package-install 'racer)
(package-install 'typescript-mode)
