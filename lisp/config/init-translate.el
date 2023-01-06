;; Apple
(defun mistkafka/utils/get-region-str ()
  (buffer-substring-no-properties
   (region-beginning)
   (region-end)))

(defun mistkafka/osx/speech ()
  "Speech region content.
Or word at point.
Or prompt user input."
  (interactive)
  (let ((content (mistkafka/translate/get-region-or-word-at-point-or-input)))
    (mistkafka/translate/do-speech content)))

(defun mistkafka/translate/get-region-or-word-at-point-or-input ()
  "get regison.
Or word at point,
Or prompt user input."
  (cond ((region-active-p) (mistkafka/utils/get-region-str))
        ((word-at-point) content (word-at-point))
        (t (ivy-read "Speech Content: " nil))))

(defun mistkafka/translate/do-speech (content)
  (call-process "osascript"
                nil 0 nil
                "-e" (format "say \"%s\"" content)))

(defun mistkafka/do-translate ()
  (message "TODO: 用基于puppetter的方式实现"))

(defun mistkafka/translate ()
  (interactive)
  (let ((word (mistkafka/translate/get-region-or-word-at-point-or-input)))
    (mistkafka/do-translate word)
    (mistkafka/translate/do-speech word)
    ))

(mistkafka/keyboard/bind "tt" 'mistkafka/translate)

(provide 'init-translate)
