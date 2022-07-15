(require 'package)

(setq package-list '(evil
                     evil-leader))

(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))

(package-initialize)
 
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'evil)
(evil-mode t)

(eval-when-compile
  (require 'use-package))

(use-package markdown-mode
  :ensure t)

(use-package gruvbox-theme
  :ensure t
  :config 
  (load-theme 'gruvbox t))

(when (version<= "26.0.50" emacs-version )
    (global-display-line-numbers-mode))

(setq package-enable-at-startup nil)
(setq scroll-step 1
      scroll-conservatively 10000)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#2e3436" "#a40000" "#4e9a06" "#c4a000" "#204a87" "#5c3566" "#729fcf" "#eeeeec"])
 '(blink-cursor-mode nil)
 '(custom-enabled-themes '(tsdh-dark))
 '(display-line-numbers-type 'relative)
 '(global-display-line-numbers-mode t)
 '(package-selected-packages
   '(magit gruvbox-theme ## markdown-preview-eww treemacs-evil evil-visual-mark-mode))
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil)
 '(transient-mark-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "SpaceMono Nerd Font" :foundry "CF  " :slant normal :weight normal :height 123 :width normal)))))
