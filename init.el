
(setq debug-on-error t)


(defconst *spell-check-support-enabled* nil) ;; Enable with t if you prefer
(defconst *is-a-mac* (eq system-type 'darwin))

;; set Super key to FN
(setq ns-function-modifier 'super)  ; make Fn key do Hyper


(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp"))
;(setq custom-file (expand-file-name "custom.el" "~/.emacs.d/"))
(setq custom-file (expand-file-name "~/.emacs.d/custom.el"))


(require 'init-load-path)
(require 'init-packages)
(require 'init-exec-path)
(x-focus-frame nil) ; for emacs in terminal


(get-package 'use-package)

;; few commands are bound to the counsel package
; if not installed, commands like find file or swiper will not work 
(get-package 'counsel)

;;; curstom packages
;----------------------------------------------------------------------------------------
;;other modes
(global-linum-mode t) ; linenumbers globally

;; PATHS
; path of haskell-stack
;replace with your current path
(add-to-list 'exec-path "/usr/local/Cellar/haskell-stack/1.9.3/bin/")

;;customization
(require 'init-doom-themes)
(require 'init-doom-modeline)

;;important features
(require 'init-swiper)
(require 'init-editing-visuals)
(require 'init-projectile) ; keybindings: S-(d | f | g | p)
(require 'init-zygospore) ; focuse on current buffer (delete all other) + revert with C-x 1
(require 'c-cpp-opjc-mode)
(require 'haskell-mode)
(require 'init-magit)
(require 'init-smartparens)
(require 'init-ibuffer)
(require 'init-windows)

;; some small features
(require 'init-google)
(require 'init-terminal)
(require 'init-sudo-edit)
(require 'init-words)
(require 'init-delete-current-buffer-file)
(require 'init-mode-line) 
(require 'init-spotify)






;----------------------------------------------------------------------------------------




; Global-indentation
(define-key global-map (kbd "RET") 'newline-and-indent)
(setq-default indent-tabs-mode t)

;; disable toolbar
(tool-bar-mode -1) 

;;; Inhibit-startup
(setq-default inhibit-startup-screen t)