(require 'smex) ; Not needed if you use package.el
(smex-initialize) ; Can be omitted. This might cause a (minimal) delay
					; when Smex is auto-initialized on its first run.

(require 'ido)
(ido-mode t)
(require 'evil)
(evil-mode 1)

(delete-selection-mode 1)

(global-hl-line-mode 1)

(require 'smartparens-config)
(add-hook 'js-mode-hook #'smartparens-mode)

(provide 'init-better-default)
