;;; magit的配置



(require 'magit)

(mistkafka/keyboard/bind "gs" 'magit-status)
(mistkafka/keyboard/bind-super-key "9" 'magit-status)
(mistkafka/keyboard/bind "gp" 'magit-push-current-to-upstream)
(mistkafka/keyboard/bind "ghb" 'magit-blame)

(mistkafka/keyboard/bind "gbn" 'magit-branch-and-checkout)
(mistkafka/keyboard/bind "gbc" 'magit-branch-checkout)

(mistkafka/keyboard/bind "gmm" 'magit-merge)
(mistkafka/keyboard/bind "gma" 'magit-merge-abort)
(mistkafka/keyboard/bind "gmc" 'magit-merge) ;magit-merge-continue

(mistkafka/keyboard/bind "grr" 'magit-rebase)
(mistkafka/keyboard/bind "gri" 'magit-rebase-interactive)


(provide 'init-git)
