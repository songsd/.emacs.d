
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/init/")

(require 'init-packages)
(require 'init-ui)
(require 'init-custom)



;; Find Executable Path on OS X
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))



(require 'smartparens-config)
(add-hook 'js-mode-hook #'smartparens-mode)


(require 'smex) ; Not needed if you use package.el
(smex-initialize) ; Can be omitted. This might cause a (minimal) delay
					; when Smex is auto-initialized on its first run.


(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)


(add-hook 'after-init-hook 'global-company-mode)







