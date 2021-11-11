;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; refresh' after modifying this file!


;; These are used for a number of things, particularly for GPG configuration,
;; some email clients, file templates and snippets.
(setq user-full-name "Kevin Colyar"
      user-mail-address "kevin@colyar.net")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;; test
;; (setq doom-font (font-spec :family "monospace" :size 14)
;;       doom-variable-pitch-font (font-spec :family "sans"))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. These are the defaults.
;; (setq doom-theme 'doom-one)
(setq doom-theme 'doom-spacegrey)
;; (setq doom-theme 'doom-solarized-dark)

;; If you intend to use org, it is recommended you change this!
;; (setq org-directory "~/mnt/imac_dropbox/org/")

;; If you want to change the style of line numbers, change this to `relative' or
;; `nil' to disable it:
(setq display-line-numbers-type nil)

;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', where Emacs
;;   looks when you load packages with `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c g k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c g d') to jump to their definition and see how
;; they are implemented.

;; Make SPC menu show up faster
(setq which-key-idle-delay 0.4)

;; Disable quit confirmation
(setq confirm-kill-emacs nil)

;; Use OSX clipboard
(remove-hook 'doom-post-init-hook #'osx-clipboard-mode)

(setq org-directory "/ssh:imac.lan:/Users/kevincolyar/Dropbox")

(setq org-agenda-files
  '("/ssh:imac.lan:/Users/kevincolyar/Dropbox/org/inbox.org"
     "/ssh:imac.lan:/Users/kevincolyar/Dropbox/org/home.org"
     "/ssh:imac.lan:/Users/kevincolyar/Dropbox/org/dcpud.org"
     "/ssh:imac.lan:/Users/kevincolyar/Dropbox/org/reference.org"))

;; Indent styles
(setq
  standard-indent 2
  tab-width 2
  indent-tabs-mode nil
  lisp-indent-offset 2
  )

;; Set localleader to ,
;; (setq evil-snipe-override-evil-repeat-keys nil)
;; (setq doom-localleader-key ",")
;; (setq doom-localleader-alt-key "M-,")

(setq doom-leader-key "SPC"
      doom-localleader-key ",")
