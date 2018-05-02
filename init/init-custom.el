

(setq auto-save-default nil)
(fset 'yes-or-no-p 'y-or-n-p)


(setq-default abbrev-mode t)
(define-abbrev-table 'global-abbrev-table '(
					    ;; Shifu
					    ("8aa" "ssd")
					    ;; Tudi
					    ("8k8s" "Kubernetes")
					    ))

;; shortcuts
;; 快速打开配置文件
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

;; 这一行代码，将函数 open-init-file 绑定到 <f2> 键上
(global-set-key (kbd "<f2>") 'open-init-file)



(require 'popwin)
(popwin-mode 1)


(require 'recentf)
(setq recentf-max-saved-items 100)

(recentf-mode 1)
(global-set-key (kbd "C-x C-r") 'recentf-open-files)

(require 'projectile)
;; 默认全局使用
(projectile-global-mode)
;; 默认打开缓存
(setq projectile-enable-caching t)
;; 使用f5键打开默认文件搜索
(global-set-key [f5] 'projectile-find-file)

(provide 'init-custom)


(setq hippie-expand-try-function-list '(try-expand-debbrev
					try-expand-debbrev-all-buffers
					try-expand-debbrev-from-kill
					try-complete-file-name-partially
					try-complete-file-name
					try-expand-all-abbrevs
					try-expand-list
					try-expand-line
					try-complete-lisp-symbol-partially
					try-complete-lisp-symbol))

(global-set-key (kbd "s-/") 'hippie-expand)


(require 'dired-x)

