;;; FILENAME.el --- DESCRIPTION -*- no-byte-compile: t; lexical-binding: t; -*-

(setq debug-on-error t)

;;; This file is loaded before early-init.el. Use it for configurations that need to be set even earlier in the startup sequence, typically affecting the initial setup of the Emacs environment, including UI elements.

;;; Reducing clutter in ~/.emacs.d by redirecting files to ~/.emacs.d/var/
;; NOTE: This must be placed in 'pre-early-init.el'.
(setq user-emacs-directory (expand-file-name "var/" minimal-emacs-user-directory))
(setq package-user-dir (expand-file-name "elpa" user-emacs-directory))


;;; Disable titlebar
;(add-to-list 'default-frame-alist '(undecorated-round . t))   
