(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default-input-method "chinese-zozy")
 '(mouse-scroll-min-lines 1)
 '(mouse-wheel-scroll-amount (quote (1 ((shift) . 1) ((control)))))
 '(tab-width 4)
 '(tool-bar-mode nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "White" :foreground "Black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 160 :width normal :foundry "apple" :family "Monaco")))))
;; Tell emacs where is your personal elisp lib dir
;; this is the dir you place all your extra packages
;(add-to-list 'load-path "~/.emacs.d/")

;(setq default-frame-alist 
;'((height . 33) (width . 116) (menu-bar-lines . 25) (tool-bar-lines . 10)))

(setq initial-frame-alist
          '((top . 80) (left . 100) (width . 84) (height . 29)))

;; load the packaged named xyz.
;(load "color-theme") ;; best not to include the ending “.el” or “.elc”

;; Jabber
;(load "jabber-autoloads")

;(require 'color-theme)
;(color-theme-goldenrod)
;(color-theme-charcoal-black)
;(color-theme-blackboard)

;(color-theme-initialize)
;(load-file "~/.emacs.d/color-theme-blackboard.el")

(put 'upcase-region 'disabled nil)



;;(require 'color-theme)
;;(color-theme-gray30)

(display-time-mode 1) ; 顯示時間
(setq display-time-24hr-format t) ; 24小時格式
(setq display-time-day-and-date t) ; 顯示日期

(mouse-avoidance-mode 'animate) ; 游標移動到滑鼠指標時，滑鼠指標自動彈開

(column-number-mode t) ; 顯示行數

(setq frame-title-format "staryes@%b") ;顯示目前編輯的Buffer名稱

;;; MacOS X specific stuff
(setq mac-command-modifier 'hyper)
(setq mac-right-option-modifier 'ctrl)
;(setq mac-command-modifier 'meta)
;(setq mac-ctrl-modifier 'hyper)

;(setq mac-option-key-is-meta nil)
;(setq mac-command-key-is-meta t)
;(setq mac-command-modifier 'meta)
;(setq mac-option-modifier 'ctrl)
;(setq mac-control-key-is-control nil)
;(setq mac-control-modifier 'hyper)

(global-set-key [(hyper a)] 'mark-whole-buffer)
(global-set-key [(hyper v)] 'yank)
(global-set-key [(hyper c)] 'kill-ring-save)
(global-set-key [(hyper x)] 'kill-region)
(global-set-key [(hyper s)] 'save-buffer)
(global-set-key [(hyper l)] 'goto-line)
(global-set-key [(hyper o)] 'find-file)
(global-set-key [(hyper f)] 'isearch-forward)
(global-set-key [(hyper g)] 'isearch-repeat-forward)
(global-set-key [(hyper w)]
                (lambda () (interactive) (kill-buffer (current-buffer))))
(global-set-key [(hyper .)] 'keyboard-quit)

;; I disabled this since I want to avoid hitting Cmd-q accidentally.
(global-set-key [(hyper q)] 'save-buffers-kill-emacs)

(require 'cc-mode)
(global-font-lock-mode 1)

(require 'package)
(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/"))


;;; activate ecb
;(require 'ecb)
;(require 'ecb-autoloads)

(put 'downcase-region 'disabled nil)
