
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/init/")

(require 'init-packages)
(require 'init-ui)

(require 'init-custom)
(require 'init-keybinds)
(require 'init-better-default)
(require 'init-org)
(require 'javap-mode)

;; Find Executable Path on OS X
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

(add-hook 'after-init-hook 'global-company-mode)


;;(setq neo-theme (if (display-graphic-p) 'icons 'arrow))

	
(setq make-backup-files nil)
(global-auto-revert-mode 1)


;; 设置 org-agenda 打开快捷键
(global-set-key (kbd "C-c a") 'org-agenda)
(require 'multiple-cursors)

(require 'magit)
