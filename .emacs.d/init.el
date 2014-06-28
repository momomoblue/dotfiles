; 設定反映はM-x eval-buffer
; ln -s ~/dotfiles/.emacs.d ~/.emacs.d

;; 言語設定
(set-language-environment 'Japanese)
; デフォルトをUTF-8に
(prefer-coding-system 'utf-8)
(setq default-coding-systems 'utf-8)
(setq file-name-coding-system 'utf-8)
(setq locale-coding-system 'utf-8)


;;;表示に関する項目
;;カラム番号を表示
;(column-number-mode t)

;; カレント行を目立たせる
;(global-hl-line-mode)

;; ツールバーを表示しない
;(tool-bar-mode nil)

;;ファイルサイズを表示
;(size-indication-mode t)
;;時計を表示
;(setq display-time-day-and-date t)
;(setq display-time-24hr-format t)
;(display-time-mode t)
;;バッテリー残量を表示
;(display-battery-mode t)

;括弧のハイライト
;(show-paren-mode t)


;;フォントに関する設定
;ascii
;(set-face-attribute 'default nil
;		    :family "Monaco"
;		    :height 120)



;; package関連設定
; M-x eval-buffer
; M-x package-refresh-contents
; M-x package-list-packages
; anything/anything-configをiで選択してxでインストール
(require 'package)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("ELPA" . "http://tromey.com/elpa/"))
(package-initialize)
;;package関連コマンド
;ELPAのパッケージ一覧取得
;M-x list-package
;リストが表示されるのでiで選択してxでインストール実行
;インストールされたパッケージの適用
;M-x package-initialize

;; anything関連構成
;(require 'anything)
;(global-set-key (kbd "C-:") 'anything)

;; バックアップ・オートセーブを行わない
(setq make-backup-files nil)
(setq auto-save-default nil)



;; emacs-server
(server-start)
