(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "lisp/third-lib" user-emacs-directory))

(require 'init-polyfill)

(require 'init-package)
(require 'init-proxy)

;; fix mac 10.15无法iCloud打开文件夹的问题
(setq dired-use-ls-dired nil)

;; 加载第三方包
(require 'use-package)
(require 'ivy)
(require 's)

(defun mistkafka/keyboard/bind (key-describe command)
  "将COMMAND按键绑定到`M-n'下的KEY-DESCRIBE."
  (let* ((key-describe-items (s-split "" key-describe t))
         (key-describe-length (length key-describe-items))
         (maped-key-describe-items nil)
         (the-index -1))
    (cl-loop for i from -1 below key-describe-length
             do (mistkafka/keyboard/bind--do-bind
                 (mistkafka/keyboard/bind--generate-describe-items i key-describe-items)
                 command)
             )))
(defun mistkafka/keyboard/bind--generate-describe-items (current-index origin-key-describe-items)
  (let* ((the-length (length origin-key-describe-items))
         (index 0)
         (maped-item nil))
    
    (mapcar
     (lambda (item)
       (setq maped-item (if (<= index current-index)
                            (format "M-%s" item)
                          item))
       (setq index (+ 1 index))
       maped-item)
     
     origin-key-describe-items)
    ))
(defun mistkafka/keyboard/bind--do-bind (key-describe-items command)
  (message (format "%s" (s-join " " key-describe-items)))
  (global-set-key
   (kbd (format "M-n %s" (s-join " " key-describe-items)))
   command))

(defun mistkafka/keyboard/bind-super-key (num command)
  (global-set-key
   (kbd (format "s-%s" num))
   command))

;; 基础配置
(require 'init-exec-path)

;; 编程相关
(require 'init-lsp)
(require 'init-company)
(require 'init-term)
;; (require 'init-vue)

;; 语言
(require 'init-org)
;; (require 'init-typescript)
(require 'init-python)
(require 'init-rust)
;; (require 'init-css)
;; (require 'init-swift)

;; 文件/项目
(require 'init-git-project)
(require 'mistkafka-file)
(require 'init-eyebrowse)

;; 杂类 or 待分类
(require 'init-ui)
(require 'init-misc)
(require 'init-cnfonts)
(require 'init-bookmark)
(require 'init-translate)
;(require 'mistkafka-habitica)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#1E2029" "#ff5555" "#50fa7b" "#f1fa8c" "#61bfff" "#ff79c6" "#8be9fd" "#f8f8f2"])
 '(custom-safe-themes
   '("912cac216b96560654f4f15a3a4d8ba47d9c604cbc3b04801e465fb67a0234f0" "10461a3c8ca61c52dfbbdedd974319b7f7fd720b091996481c8fb1dded6c6116" "6b2636879127bf6124ce541b1b2824800afc49c6ccd65439d6eb987dbf200c36" "93a0885d5f46d2aeac12bf6be1754faa7d5e28b27926b8aa812840fe7d0b7983" "49ec957b508c7d64708b40b0273697a84d3fee4f15dd9fc4a9588016adee3dad" "274fa62b00d732d093fc3f120aca1b31a6bb484492f31081c1814a858e25c72e" "aaffceb9b0f539b6ad6becb8e96a04f2140c8faa1de8039a343a4f1e009174fb" "f0dc4ddca147f3c7b1c7397141b888562a48d9888f1595d69572db73be99a024" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "aa0a998c0aa672156f19a1e1a3fb212cdc10338fb50063332a0df1646eb5dfea" "a866134130e4393c0cad0b4f1a5b0dd580584d9cf921617eee3fd54b6f09ac37" "0598de4cc260b7201120b02d580b8e03bd46e5d5350ed4523b297596a25f7403" "013c62a1fcee7c8988c831027b1c38ae215f99722911b69e570f21fc19cb662e" "4597d1e9bbf1db2c11d7cf9a70204fa42ffc603a2ba5d80c504ca07b3e903770" "bbb4a4d39ed6551f887b7a3b4b84d41a3377535ccccf901a3c08c7317fad7008" "5715d3b4b071d33af95e9ded99a450aad674e308abb06442a094652a33507cd2" "c5d320f0b5b354b2be511882fc90def1d32ac5d38cccc8c68eab60a62d1621f2" "4e21fb654406f11ab2a628c47c1cbe53bab645d32f2c807ee2295436f09103c6" "891debfe489c769383717cc7d0020244a8d62ce6f076b2c42dd1465b7c94204d" default))
 '(fci-rule-color "#6272a4")
 '(jdee-db-active-breakpoint-face-colors (cons "#1E2029" "#bd93f9"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#1E2029" "#50fa7b"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#1E2029" "#565761"))
 '(lsp-project-whitelist '("^/Users/mistkafka/Code/gllue/web1/$"))
 '(org-agenda-files '("~/gtd/plan.org.gpg" "~/gtd/index.org.gpg"))
 '(package-selected-packages
   '(groovy-mode org-roam lua-mode flycheck racer rustic term exec-path-from-shell "s-1.12.0" "s" 's "s" s proxy-mode with-proxy lsp-python-ms swift-mode lsp-sourcekit bing-dict lsp-vue org-pomodoro cl-macs xkcd pdf-tools restclient tide-mode org-crypt tramp-cache dockerfile-mode stylus-mode editorconfig nginx-mode window-number multi-term paredit slime evil smartparens htmlize 0blayout color-theme-sanityinc-tomorrow js-doc cnfonts counsel auto-complete page-break-lines yasnippet-snippets yasnippet-snippetst yasnippet doom-themes use-package lsp-python lsp-javascript-typescript lsp-ui lsp-mode eyebrowse which-key typescript-mode magit ivy web-mode))
 '(safe-local-variable-values '((epa-file-select-keys "98DE5D28")))
 '(send-mail-function 'mailclient-send-it)
 '(vc-annotate-background "#282a36")
 '(vc-annotate-color-map
   (list
    (cons 20 "#50fa7b")
    (cons 40 "#85fa80")
    (cons 60 "#bbf986")
    (cons 80 "#f1fa8c")
    (cons 100 "#f5e381")
    (cons 120 "#face76")
    (cons 140 "#ffb86c")
    (cons 160 "#ffa38a")
    (cons 180 "#ff8ea8")
    (cons 200 "#ff79c6")
    (cons 220 "#ff6da0")
    (cons 240 "#ff617a")
    (cons 260 "#ff5555")
    (cons 280 "#d45558")
    (cons 300 "#aa565a")
    (cons 320 "#80565d")
    (cons 340 "#6272a4")
    (cons 360 "#6272a4")))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'upcase-region 'disabled nil)
(put 'set-goal-column 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'narrow-to-region 'disabled nil)
