(setq load-path (cons "~/.emacs-lisp" load-path))

(setq auto-mode-alist
      (cons '("\\.py$" . python-mode) auto-mode-alist))
(setq interpreter-mode-alist
      (cons '("python" . python-mode)
            interpreter-mode-alist))

(autoload 'python-mode "python-mode" "Python editing mode." t)

(add-hook 'python-mode-hook
          (lambda ()
            (setq python-indent 4)))

(menu-bar-mode 0)

(setq-default c-basic-offset 4)
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)

(defun my-c++-mode-hook ()
  (setq c-basic-offset 4)
  (c-set-offset 'substatement-open 0))
(add-hook 'c++-mode-hook 'my-c++-mode-hook)

(server-start)

; toggle-enable-multibyte-characters
(show-paren-mode)

(global-font-lock-mode 1)
