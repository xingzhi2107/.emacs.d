(require 'proxy-mode)

(setq global-proxy-mode t)

(setq proxy-mode-env-http-proxy "http://127.0.0.1:6152")
(setq proxy-mode-emacs-socks-proxy '("Surge server" "127.0.0.1" 6153 5))
(setq proxy-mode-emacs-http-proxy '(("http"  . "127.0.0.1:6152")
                                  ("https" . "127.0.0.1:6152")
                                  ;; don't use `localhost', avoid robe server (For Ruby) can't response.
                                  ("no_proxy" . "127.0.0.1")
                                  ))

(provide 'init-proxy)
