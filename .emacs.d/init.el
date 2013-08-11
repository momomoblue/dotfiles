; 設定反映はM-x eval-buffer

;; 言語設定
(set-language-environment 'Japanese)
; デフォルトをUTF-8に
(prefer-coding-system 'utf-8)
(setq default-coding-systems 'utf-8)
(setq file-name-coding-system 'utf-8)
(setq locale-coding-system 'utf-8)

;; package関連設定
; M-x eval-buffer
; M-x package-refresh-contents
; M-x package-list-packages
; anything/anything-configをiで選択してxでインストール
(require 'package)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

;; anything関連構成
(require 'anything)
(global-set-key (kbd "C-:") 'anything)

;; バックアップ・オートセーブを行わない
(setq make-backup-files nil)
(setq auto-save-default nil)

;; ツールバーを表示しない
(tool-bar-mode nil)

;; emacs-server
(server-start)

;; カレント行を目立たせる
(global-hl-line-mode)
