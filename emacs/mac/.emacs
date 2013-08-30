;;erlang plugin
(setq load-path (cons "~/Documents/opensource/erlang/otp_src_R15B02/lib/tools/emacs" load-path))
(setq erlang-root-dir "")
(setq exec-path (cons "" exec-path))
(require 'erlang-start)


;; fix the PATH variable
(defun set-exec-path-from-shell-PATH ()
  (let ((path-from-shell (shell-command-to-string "$SHELL -i -c 'echo $PATH'")))
    (setenv "PATH" path-from-shell)
    (setq exec-path (split-string path-from-shell path-separator))))

(when window-system (set-exec-path-from-shell-PATH))

(setenv "PATH" (getenv "PATH"))

;;package sites
(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

;;nrepl
(require 'nrepl)
(setq nrepl-hide-special-buffers t)
(setq nrepl-popup-stacktraces-in-repl t)
(setq nrepl-history-file "~/.emacs.d/nrepl-history")
 
;; Some default eldoc facilities
(add-hook 'nrepl-connected-hook
(defun pnh-clojure-mode-eldoc-hook ()
(add-hook 'clojure-mode-hook 'turn-on-eldoc-mode)
(add-hook 'nrepl-interaction-mode-hook 'nrepl-turn-on-eldoc-mode)
(nrepl-enable-on-existing-clojure-buffers)))
 
;; Repl mode hook
(add-hook 'nrepl-mode-hook 'subword-mode)
 
;; Auto completion for NREPL
(require 'ac-nrepl)
(eval-after-load "auto-complete"
'(add-to-list 'ac-modes 'nrepl-mode))
(add-hook 'nrepl-mode-hook 'ac-nrepl-setup)

(require 'nrepl-ritz) ;; after (require 'nrepl)
 
;; Ritz middleware
(define-key nrepl-interaction-mode-map (kbd "C-c C-j") 'nrepl-javadoc)
(define-key nrepl-mode-map (kbd "C-c C-j") 'nrepl-javadoc)
(define-key nrepl-interaction-mode-map (kbd "C-c C-a") 'nrepl-apropos)
(define-key nrepl-mode-map (kbd "C-c C-a") 'nrepl-apropos)

;; linum
(global-linum-mode 1)

;;theme deep-blue
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (deeper-blue))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;hide toolbar
(tool-bar-mode -1)

;;start with full screen
(custom-set-variables
 '(initial-frame-alist (quote ((fullscreen . maximized)))))

;;hide scrollbar
(scroll-bar-mode -1)

;;markdown mode
(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;;yasnippet
(require 'yasnippet)
(yas-global-mode 1)
(setq yas-snippet-dirs
      '("~/.emacs.d/snippets")) ;; personal snippet

;;rainbow delimiters
(require 'rainbow-delimiters)
(add-hook 'clojure-mode-hook 'rainbow-delimiters-mode)
;;(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

;;auto-complete
(add-to-list 'load-path "~/.emacs.d/plugins/auto-complete-1.3.1")
(add-to-list 'ac-dictionary-directories "~/.emacs.d/dict")
(require 'auto-complete-config)
(ac-config-default)

;;ido
(require 'ido)
(ido-mode t)

;;lusty explorer
(require 'lusty-explorer)

;;display time mode
(display-time-mode 1)

;;y-or-n-p
(defalias 'yes-or-no-p 'y-or-n-p)
