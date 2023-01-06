;;; init-keyboard.el -- 按键绑定相关的功能


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

(provide 'init-keyboard)
