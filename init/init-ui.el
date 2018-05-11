


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes (quote (wheatgrass)))
 '(package-selected-packages (quote (monokai-theme ## smex))))


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )



(tool-bar-mode -1)

;; 关闭文件滑动控件
(scroll-bar-mode -1)

;; 显示行号
(global-linum-mode 1)

;; 更改光标的样式（不能生效，解决方案见第二集）
(setq cursor-type 'bar)
(setq-default cursor-type 'bar)


;; 关闭启动帮助画面
(setq inhibit-splash-screen 1)

(set-face-attribute 'default nil :height 160)

(setq initial-frame-alist (quote ((fullscreen . maximized))))

;(load-theme 'monokai 1)

(setq neo-theme (if (display-graphic-p) 'ascii 'ascii))

(neotree-toggle)
(neotree-dir "~/.emacs.d/")

(load-theme 'dracula 1)
(provide 'init-ui)
