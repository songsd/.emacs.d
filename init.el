
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/init/")

(require 'init-packages)
(require 'init-ui)





;; Find Executable Path on OS X
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))






;; 关闭缩进 (第二天中被去除)
;; (electric-indent-mode -1)

;; 更改显示字体大小 16pt
;; http://stackoverflow.com/questions/294664/how-to-set-the-font-size-in-emacs

;; 快速打开配置文件
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

;; 这一行代码，将函数 open-init-file 绑定到 <f2> 键上
(global-set-key (kbd "<f2>") 'open-init-file)

(global-hl-line-mode 1)

(require 'smartparens-config)
(add-hook 'js-mode-hook #'smartparens-mode)








(require 'smex) ; Not needed if you use package.el
(smex-initialize) ; Can be omitted. This might cause a (minimal) delay
					; when Smex is auto-initialized on its first run.


(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(load-theme 'monokai 1)

;;格式化整个文件函数
(defun indent-whole ()
  (interactive)
  (indent-region (point-min) (point-max))
  (message "format successfully"))
;;绑定到F3键
(global-set-key [f3] 'indent-whole)


(setq auto-save-default nil)
(add-hook 'after-init-hook 'global-company-mode)

(require 'popwin)
(popwin-mode 1)

(setq auto-save-default nil)


