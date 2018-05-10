
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/init/")

(require 'init-packages)
(require 'init-ui)

(require 'init-custom)
(require 'init-keybinds)
(require 'init-better-default)


;; Find Executable Path on OS X
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

(add-hook 'after-init-hook 'global-company-mode)

(neotree-toggle)
(neotree-dir "~/.emacs.d/")
;;(setq neo-theme (if (display-graphic-p) 'icons 'arrow))

