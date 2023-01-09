(require 'sort-tab)

(sort-tab-mode 1)

(mistkafka/keyboard/bind-super-key "1" 'sort-tab-select-visible-tab)
(mistkafka/keyboard/bind-super-key "2" 'sort-tab-select-visible-tab)
(mistkafka/keyboard/bind-super-key "3" 'sort-tab-select-visible-tab)
(mistkafka/keyboard/bind-super-key "4" 'sort-tab-select-visible-tab)
(mistkafka/keyboard/bind-super-key "5" 'sort-tab-select-visible-tab)
(global-set-key (kbd "s-w") 'sort-tab-close-current-tab)


(provide 'init-sort-tab)
