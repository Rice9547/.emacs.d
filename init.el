;=========================
;Global Setting         ==
;=========================

(set-language-environment 'UTF-8) ;set encoding
(fset 'yes-or-no-p 'y-or-n-p) ;set yes/no to y/n
(setq frame-title-format "Rice@")
(tool-bar-mode -1) ;Hide Toolbar
(menu-bar-mode -1) ;Hide Menu


;=========================
;Time Setting           ==
;=========================
(display-time-mode 1) ;display time
(setq display-time-24hr-format t) 
(setq display-time-day-and-date t)


;=========================
;Editor                 ==
;=========================
(global-linum-mode t) ;Line Number
(column-number-mode t) ;Colume Number

(require 'cc-mode)
(setq-default c-basic-offset 4)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)
(define-key c-mode-base-map (kbd "RET") 'newline-and-indent)

(global-hl-line-mode 1)
(set-face-background 'highlight nil) ;background setting
(set-face-foreground 'highlight nil) ;foreground setting
(set-face-underline-p 'highlight t) ;underline

(show-paren-mode t)
(setq show-paren-style 'parentheses)

(add-to-list 'load-path "~/.emacs.d/emmet-mode")
(require 'emmet-mode)
(add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
(add-hook 'css-mode-hook  'emmet-mode) ;; enable Emmet's css abbreviation.
(add-hook 'emmet-mode-hook (lambda () (setq emmet-indent-after-insert nil)))


;=========================
; Plugin                ==
;=========================

(require 'package)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives '("elpa" . "http://tromey.com/elpa/") t)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)


(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)

(require 'yasnippet)
(yas-global-mode 1)

(
  defun my:ac-c-header-init()
  (require 'auto-complete-c-headers)
  (add-to-list 'ac-sources 'ac-source-c-headers)
  (add-to-list 'achead:include-directories '"/usr/include/c++/4.9")
)

(add-hook 'c++-mode-hook 'my:ac-c-header-init)
(add-hook 'c-mode-hook 'my:ac-c-header-init)

(require 'color-theme)
(
  eval-after-load "color-theme"
    '(progn
	   (color-theme-initialize)
	   (color-theme-pok-wob)
	 )
)
(put 'erase-buffer 'disabled nil)
