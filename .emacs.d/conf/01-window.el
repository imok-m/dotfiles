;; theme
(load-theme 'wheatgrass)
;; スタートアップメッセージ非表示
(setq inhibit-startup-screen t)
;; ツールバー非表示
(tool-bar-mode 0)
;; スクロールバー非表示
(scroll-bar-mode 0)
;; メニューバー非表示
(menu-bar-mode 0)
;; 行番号表示
(global-linum-mode)
;; 空白強調表示
(when
    (boundp 'show-trailing-whitespace)
  (setq-default show-trailing-whitespace t))
