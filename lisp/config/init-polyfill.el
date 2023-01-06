;;; init-polyfill.el -- 覆盖emacs的内置代码来临时修复一些官方还没修复的bug


;; overriding image.el function image-type-available-p
;; https://emacs.stackexchange.com/questions/74289/emacs-28-2-error-in-macos-ventura-image-type-invalid-image-type-svg
;; fixed in Emacs 29
(defun image-type-available-p (type)
  "Return t if image type TYPE is available.
Image types are symbols like `xbm' or `jpeg'."
  (if (eq 'svg type)
      nil
    (and (fboundp 'init-image-library)
         (init-image-library type))))


(provide 'init-polyfill)
