;;========================================
;; 外观设置
;;========================================

;;禁用工具栏
(tool-bar-mode nil)

;;禁用菜单栏，F10 开启关闭菜单
(menu-bar-mode nil)

;;禁用滚动栏，用鼠标滚轮代替
;(scroll-bar-mode nil)

;;禁用启动画面
(setq inhibit-startup-message t)

;;========================================
;; 键绑定
;;========================================

;; C-t 设置标记
;(global-set-key (kbd "C-t") 'set-mark-command)

;; C-x b => CRM bufer list
;(global-set-key "\C-xb" 'electric-buffer-list)

;;-----------------------------------------
;; 多窗口相关操作
;;-----------------------------------------
;;关闭当前缓冲区 Alt+4  ;; C-x 0
;(global-set-key (kbd "M-4") 'delete-window)
;;关闭其它缓冲区 Alt+1  ;; C-x 1
;(global-set-key (kbd "M-1") 'delete-other-windows)
;;水平分割缓冲区 Alt+2  ;; C-x 2
;(global-set-key (kbd "M-2") 'split-window-vertically)
;;垂直分割缓冲区 Alt+3  ;; C-x 3
;(global-set-key (kbd "M-3") 'split-window-horizontally)
;;切换到其它缓冲区 Alt+0 ;; C-x o 
;(global-set-key (kbd "M-0") 'other-window)

;;F10 显示/隐藏菜单栏 ;; M-x menu-bar-open
(define-key global-map (kbd "<f10>") 'menu-bar-mode)

;;-----------------------------------------
;; WIN+s 进入 Shell ;; M-x shell
;;-----------------------------------------
;(global-set-key (kbd "s-s") 'shell)
;(define-key ctl-x-map "\M-s" 'shell)

;;========================================
;; 缓冲区
;;========================================

;;设定行距
(setq default-line-spacing 0)

;;页宽 
(setq default-fill-column 90)

;;缺省模式 text-mode
(setq default-major-mode 'text-mode)
(add-hook 'text-mode-hook 'turn-on-auto-fill)

;;设置删除纪录
(setq kill-ring-max 200)

;;以空行结束
(setq require-final-newline t) 

;;语法加亮
(global-font-lock-mode t)

;;高亮显示区域选择
(transient-mark-mode t)

;;页面平滑滚动， scroll-margin 5 靠近屏幕边沿3行时开始滚动，可以很好的看到上下文。
(setq scroll-margin 5
  scroll-conservatively 10000)

;高亮显示成对括号，但不来回弹跳
(show-paren-mode t)
(setq show-paren-style 'parentheses)

;;鼠标指针规避光标
;(mouse-avoidance-mode 'animate)

;;粘贴于光标处，而不是鼠标指针处
(setq mouse-yank-at-point t)

;;========================================
;; 回显区
;;========================================

;;闪屏报警
(setq visible-bell t)

;;使用 y or n 提问
(fset 'yes-or-no-p 'y-or-n-p)

;;锁定行高
(setq resize-mini-windows nil)

;;递归 minibuffer
(setq enable-recursive-minibuffers t)

;; 当使用 M-x COMMAND 后，过 1 秒钟显示该 COMMAND 绑定的键。
;(setq suggest-key-bindings 1)

;;========================================
;; 状态栏
;;========================================

;;显示时间
(display-time)

;;-----------------------------------------
;; 时间格式
;;-----------------------------------------
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
(setq display-time-interval 10)

;;显示列号
(setq column-number-mode t)

;;标题栏显示 %f 缓冲区完整路径 %p 页面百分数 %l 行号
(setq frame-title-format "%f")

;;========================================
;; 编辑器设定
;;========================================

;;不生成临时文件
;(setq-default make-backup-files nil)

;;只渲染当前屏幕语法高亮，加快显示速度
(setq font-lock-maximum-decoration t)

;; 全局显示行号
(global-linum-mode 1)

;; 高亮当前行，高亮以后会覆盖该行的语法高亮。
(global-hl-line-mode 0)

;;-----------------------------------------
;;将错误信息显示在回显区
;;-----------------------------------------
;(condition-case err
;    (progn
;    (require 'xxx) )
;  (error
;   (message "Can't load xxx-mode %s" (cdr err))))

;;使用X剪贴板
(setq x-select-enable-clipboard t)

;;-----------------------------------------
;; 使用空格缩进,indent-tabs-mode:
;; t 使用 TAB 作格式化字符, nil 使用空格作格式化字符
;;-----------------------------------------
(setq indent-tabs-mode nil)
(setq tab-always-indent nil)
(setq tab-width 4)

;;========================================
;; 颜色设置
;;========================================

;; 指针颜色
(set-cursor-color "black")

;; 鼠标颜色
(set-mouse-color "black")

;;-----------------------------------------
;; 背景和字体颜色
;;-----------------------------------------
(set-foreground-color "gainsboro")
(set-background-color "grey30")
(set-border-color "black")

;;-----------------------------------------
;; 语法高亮显示，区域选择，二次选择 ;;前景和背景色
;;-----------------------------------------
(set-face-foreground 'highlight "white")
(set-face-background 'highlight "blue")
(set-face-foreground 'region "cyan")
(set-face-background 'region "blue")
(set-face-foreground 'secondary-selection "skyblue")
(set-face-background 'secondary-selection "darkblue")

;;-----------------------------------------
;; 日历配色
;;-----------------------------------------
;(setq calendar-load-hook
;'(lambda ()
;(set-face-foreground 'diary-face "skyblue")
;(set-face-background 'holiday-face "slate blue")
;(set-face-foreground 'holiday-face "white")))

;;========================================
;; 字体设置
;;========================================
(set-default-font "-unknown-DejaVu Sans Mono-normal-normal-normal-*-14-*-*-*-m-0-iso10646-1")
(if window-system
  (set-fontset-font (frame-parameter nil 'font)
    'unicode '("Microsoft YaHei" . "unicode-bmp"))
)

;;========================================
;; 必备扩展 
;;========================================

;;-----------------------------------------
;; 添加Auto-Complete 配置
;;-----------------------------------------
(add-to-list 'load-path
  "~/.emacs.d/plugins/auto-complete/"); This may not be appeared if you have already added.                               
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories
  "~/.emacs.d/plugins/auto-complete/dict/")
(ac-config-default)

;;-----------------------------------------
;; 添加Yasnippet 配置
;;-----------------------------------------
(add-to-list 'load-path
	     "~/.emacs.d/plugins/yasnippet")
(require 'yasnippet)
(yas/initialize)
(setq yas/root-directory "~/.emacs.d/snippets")
(yas/load-directory yas/root-directory)
(yas/global-mode 1)

;;-----------------------------------------
;; Docbook
;;-----------------------------------------
;(require 'docbook-xml-mode)

;(add-hook 'docbook-xml-mode-hook
;  (function (lambda ()
;    (setq outline-regexp "<!\\-\\-\\*+")
;      (outline-minor-mode)
;      (hide-body))))

;;-----------------------------------------
;; org-mode
;;-----------------------------------------
(setq org-hide-leading-stars t)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done 'time)

;; Outline-大纲模式
(setq outline-minor-mode-prefix [(control o)])

;;开启服务器模式
;(server-start)
