
;; fix mac 10.15无法iCloud打开文件夹的问题
(setq dired-use-ls-dired nil)

(let
    (
     ;; 加载的时候临时增大`gc-cons-threshold'以加速启动速度。
     (gc-cons-threshold most-positive-fixnum)
     (gc-cons-percentage 0.6)
     ;; 清空避免加载远程文件的时候分析文件。
     (file-name-handler-alist nil))

  (with-temp-message ""                 ; 抹掉插件启动的输出
        (require 'init-polyfill)
        (require 'init-foundation)
        (require 'ivy)
        (require 'use-package)
        (require 'init-exec-path)
        (require 'init-proxy)
        (require 'init-keyboard)
        (require 'init-cnfonts)
        (require 'init-git)
        (require 'init-git-project)
        (require 'init-eyebrowse)
        (require 'init-ui)
        (require 'init-bookmark)
        (require 'init-translate)
        
        ;; 暂时感觉不是很需要，经常来回切换的buffer也就一两个。
        ;; 但是随着打开的buffer越来越多，经常切换的那几个buffer
        ;; 就被淹没了。
        ;; (require 'init-sort-tab)

        (run-with-idle-timer
         1 nil
         #'(lambda ()
             ;; (require 'init-swift)
             (require 'init-org)
             (require 'init-org-roam)
             ;; (require 'init-lsp-bridge)
             ;; (require 'init-lsp)
             ;; (require 'init-company)
             (require 'init-term)
             ;; (require 'init-python)
             (require 'init-misc)

             ))
        )
  )


(provide 'init)
