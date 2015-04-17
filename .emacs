;; Sheldon Burks .emacs file
;; Feel free to steal what you want

;; Basic setup to do away with come annoying features
(setq inhibit-startup-message t)
(setq ring-bell-function 'ignore)
(tool-bar-mode -1)
(global-linum-mode t)
(setq scroll-step           1
      scroll-conservatively 10000)

;; Setup packages for marmalade and melpa
(require 'package)
(push '("marmalade" . "http://marmalade-repo.org/packages/")
	package-archives )
(push '("melpa" . "http://melpa.milkbox.net/packages/")
	package-archives)

;; Package Configurations
(package-initialize)

(require 'evil)
(evil-mode 1)

(require 'neotree)
(global-set-key (kbd "M-n") 'neotree-toggle)
(add-hook 'neotree-mode-hook
            (lambda ()
              (define-key evil-normal-state-local-map (kbd "TAB") 'neotree-enter)
              (define-key evil-normal-state-local-map (kbd "SPC") 'neotree-enter)
              (define-key evil-normal-state-local-map (kbd "q") 'neotree-hide)
              (define-key evil-normal-state-local-map (kbd "RET") 'neotree-enter)))

;; Appearance Configurations
(load-theme 'monokai t)
(set-default-font "consolas Bold 12")
