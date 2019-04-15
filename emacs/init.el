
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("f0dc4ddca147f3c7b1c7397141b888562a48d9888f1595d69572db73be99a024" "b54826e5d9978d59f9e0a169bbd4739dd927eead3ef65f56786621b53c031a7c" "6b2636879127bf6124ce541b1b2824800afc49c6ccd65439d6eb987dbf200c36" "b35a14c7d94c1f411890d45edfb9dc1bd61c5becd5c326790b51df6ebf60f402" "27b97024320d223cbe0eb73104f2be8fcc55bd2c299723fc61d20057f313b51c" default)))
 '(package-selected-packages (quote (use-package doom-themes magit ## ahungry-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; CUSTOM CONFIG

;; Add MELPA
;;(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)

;; Setup load-path to ~/.emacs.d/local
(add-to-list 'load-path (expand-file-name "local" user-emacs-directory))

;; Enable use-package
(eval-when-compile (require 'use-package))

;; Prefer UTF-8
(prefer-coding-system 'utf-8)

;; Set theme
(load-theme 'wombat)

;; Remeber file positions
(save-place-mode 1)

;; Turn off TABS
(setq-default indent-tabs-mode nil)

;; Turn off backup files
(setq make-backup-files nil)

;; Turn off #autosave# files
(setq auto-save-default nil)

;; Rebind C-x C-b to (ibuffer)
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; Remeber file positions
(save-place-mode 1)

;; Line numbers
(global-display-line-numbers-mode t)

;; Column number in status bar
(column-number-mode)

;; Remove distractions
(menu-bar-mode 0)
(setq inhibit-startup-screen 1)
(defalias 'yes-or-no-p 'y-or-n-p)

;; Bind region commenting globally
(global-set-key (kbd "C-c C-c") 'comment-region)
(global-set-key (kbd "C-c C-u") 'uncomment-region)

;; Open file under cursor
(global-set-key (kbd "C-x F") 'find-file-at-point)

;; Rebind M-z to 'zap-up-to-char (was 'zap-to-char)
(global-set-key (kbd "M-z") 'zap-up-to-char)

;; Redraw display
(global-set-key (kbd "<f1>") 'redraw-display)

(use-package init-ido)
