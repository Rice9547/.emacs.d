(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

(setq web-mode-markup-indent-offset 2)
(setq web-mode-css-indent-offset 2)
(setq web-mode-style-padding 2)
(setq web-mode-script-padding 2)

(set-face-attribute 'web-mode-doctype-face nil :foreground "SlateBlue")
(set-face-attribute 'web-mode-html-tag-face nil :foreground "MediumBlue")
(set-face-attribute 'web-mode-html-tag-bracket-face nil :foreground "red")
(set-face-attribute 'web-mode-html-attr-name-face nil :foreground "orange")
(set-face-attribute 'web-mode-css-at-rule-face nil :foreground "Pink3")
(set-face-attribute 'web-mode-variable-name-face nil :foreground "DarkGreen")
(set-face-attribute 'web-mode-comment-face nil :foreground "red")
