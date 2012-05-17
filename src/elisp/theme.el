(add-to-list 'load-path "/Users/schwers/src/elisp/color-theme-6.6.0/")
(require 'color-theme)
(defun color-theme-light-table-inspired ()
  "Color Theme Inspired by Light Table Demo. Created by Ryan Schwers."
  (interactive)
  (color-theme-install
   '(color-theme-light-table-inspired
     ((foreground-color . "#dcdcdc")
      (background-color . "#2b2c2b")
      (background-mode . dark))
     (bold ((t (:bold t))))
     (bold-italic ((t (:italic t :bold t))))
     (default ((t (nil))))

     (font-lock-keyword-face ((t (:bold t :foreground "#aadd99"))))
     (font-lock-constant-face ((t (:bold t :foreground "#8c89ff"))))
     (font-lock-string-face ((t (:foreground "#b0c4de"))))
     (font-lock-comment-face ((t (:italic t :foreground "#808080"))))
     (font-lock-doc-string-face ((t (:foreground "#808080"))))

     (mode-line ((t (:foreground "#dcdcdc" :background "#333333"))))
     (show-paren-match-face ((t (:bold t :foreground "#bfbebf"
				       :background "#8c89ff")))))))
(color-theme-initialize)
(color-theme-light-table-inspired)