(require 'sort-tab)

(sort-tab-mode 1)

(mistkafka/keyboard/bind-super-key "1" 'sort-tab-select-visible-tab)
(mistkafka/keyboard/bind-super-key "2" 'sort-tab-select-visible-tab)
(mistkafka/keyboard/bind-super-key "3" 'sort-tab-select-visible-tab)
(mistkafka/keyboard/bind-super-key "4" 'sort-tab-select-visible-tab)
(mistkafka/keyboard/bind-super-key "5" 'sort-tab-select-visible-tab)
(mistkafka/keyboard/bind-super-key "w" 'sort-tab-close-current-tab)
(mistkafka/keyboard/bind-super-key "{" 'sort-tab-select-prev-tab)
(mistkafka/keyboard/bind-super-key "}" 'sort-tab-select-next-tab)


(defun mistkafka/sort-tab/hack-fix-number-window ()
  "sort tab占用了window1，这就导致number window切换的时候会出比偏差，这里手动修正下.
0是mini buffer
1是sort-tab
2变成界面上看到的1，后面以此类推"
  (define-key window-numbering-keymap (kbd "M-1") 'select-window-2)
  (define-key window-numbering-keymap (kbd "M-2") 'select-window-3)
  (define-key window-numbering-keymap (kbd "M-3") 'select-window-4)
  (define-key window-numbering-keymap (kbd "M-4") 'select-window-5)
  (define-key window-numbering-keymap (kbd "M-5") 'select-window-6)
  (define-key window-numbering-keymap (kbd "M-6") 'select-window-7)
  (define-key window-numbering-keymap (kbd "M-7") 'select-window-8)
  (define-key window-numbering-keymap (kbd "M-8") 'select-window-9)
  )

(add-hook 'window-numbering-mode-hook 'mistkafka/sort-tab/hack-fix-number-window)


(provide 'init-sort-tab)
