;; -*- mode: dotspacemacs -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration."
  (setq-default
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (ie. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load. If it is the symbol `all' instead
   ;; of a list then all discovered layers will be installed.
   dotspacemacs-configuration-layers
   '(
     ;; --------------------------------------------------------
     ;; Example of useful layers you may want to use right away
     ;; Uncomment a layer name and press C-c C-c to install it
     ;; --------------------------------------------------------
     auto-completion
     better-defaults
     evil-commentary
     (git :variables
          git-gutter-use-fringe nil)
     ;; git
     version-control
     syntax-checking
     ;; wakatime
     osx
     markdown
     clojure
     html
     javascript
     ranger
     ruby
     ruby-on-rails
     yaml
     python
     shell
     shell-scripts
     spell-checking
     command-log
     kivy
     (org :variables org-enable-github-support t)

     ;; restclient
     ;; org-plus-contrib
     ;; csharp
     ;; php
     ;;      dash
     )
   ;; A list of packages and/or extensions that will not be install and loaded.
   dotspacemacs-excluded-packages '()
   ;; If non-nil spacemacs will delete any orphan packages, i.e. packages that
   ;; are declared in a layer which is not a member of
   ;; the list `dotspacemacs-configuration-layers'
   dotspacemacs-delete-orphan-packages t))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; Either `vim' or `emacs'. Evil is always enabled but if the variable
   ;; is `emacs' then the `holy-mode' is enabled at startup.
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progess in `*Messages*' buffer.
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to a .PNG file.
   ;; If the value is nil then no banner is displayed.
   ;; dotspacemacs-startup-banner 'official
   dotspacemacs-startup-banner 'official
   ;; t if you always want to see the changelog at startup
   dotspacemacs-always-show-changelog t
   ;; List of items to show in the startup buffer. If nil it is disabled.
   ;; Possible values are: `recents' `bookmarks' `projects'."
   dotspacemacs-startup-lists '(recents projects)
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(
                         spacemacs-dark
                         monokai
                         material
                         solarized-dark
                         solarized-light
                         wombat
                         leuven
                         zenburn)
   ;; If non nil the cursor color matches the state color.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font. `powerline-scale' allows to quickly tweak the mode-line
   ;; size to make separators look not too crappy.
   dotspacemacs-default-font '("Source Code Pro"
                               :size 13
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The leader key accessible in `emacs state' and `insert state'
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it.
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; The command key used for Evil commands (ex-commands) and
   ;; Emacs commands (M-x).
   ;; By default the command key is `:' so ex-commands are executed like in Vim
   ;; with `:' and Emacs commands are executed with `<leader> :'.
   dotspacemacs-command-key ":"
   ;; If non nil the paste micro-state is enabled. While enabled pressing `p`
   ;; several times cycle between the kill ring content.
   dotspacemacs-enable-paste-micro-state t
   ;; Guide-key delay in seconds. The Guide-key is the popup buffer listing
   ;; the commands bound to the current keystrokes.
   dotspacemacs-guide-key-delay 0.4
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil ;; to boost the loading time.
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up.
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX."
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'.
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'.
   dotspacemacs-inactive-transparency 90
   ;; If non nil unicode symbols are displayed in the mode line.
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters the
   ;; point when it reaches the top or bottom of the screen.
   dotspacemacs-smooth-scrolling t
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   dotspacemacs-smartparens-strict-mode nil
   ;; If non nil advises quit functions to keep server open when quitting.
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now.
   dotspacemacs-default-package-repository nil
   )
  ;; User initialization goes here
  (setq-default ruby-version-manager 'rbenv)
  ;; (setq-default ruby-enable-ruby-on-rails-support t)
  ;; (setq git-gutter-fr:side 'left-fringe)
  (setq clojure-enable-fancify-symbols t)

  ;; Use command key as meta key in os x
  (setq mac-option-key-is-meta nil)
  (setq mac-command-key-is-meta t)
  (setq mac-command-modifier 'meta)
  (setq mac-option-modifier nil)
  )

(defun indent-buffer ()
  (interactive)
  (indent-region (point-min) (point-max)))

(defun dotspacemacs/user-config ()
  "Configuration function.
 This function is called at the very end of Spacemacs initialization after
layers configuration."

  (defun my-setup-indent (n)
    ;; web development
    (setq coffee-tab-width n) ; coffeescript
    (setq javascript-indent-level n) ; javascript-mode
    (setq js-indent-level n) ; js-mode
    (setq js2-basic-offset n) ; js2-mode
    (setq web-mode-markup-indent-offset n) ; web-mode, html tag in html file
    (setq web-mode-css-indent-offset n) ; web-mode, css in html file
    (setq web-mode-code-indent-offset n) ; web-mode, js code in html file
    (setq css-indent-offset n) ; css-mode
    )

  (defun my-personal-code-style ()
    (interactive)
    (message "Indentation set to two")
    (setq indent-tabs-mode nil) ; use space instead of tab
    (my-setup-indent 2) ; indent 2 spaces width
    )

  ;; call indentation
  (my-personal-code-style)

  ;; Follow symlinks
  (setq vc-follow-symlinks t)

  ;; Enable line numbers for code buffers
  (add-hook 'prog-mode-hook 'global-linum-mode)

  ;; Add a space to the left
  (unless (display-graphic-p)
    ;; (setq linum-format " %1d "))
    (setq linum-format (concat linum-format " ")))

  ;; Don't show hidden files - use 's' in project drawer to toggle
  (setq neo-show-hidden-files nil)

  ;; Projectile
  (setq projectile-enable-caching nil)

  ;; Enable enhanced ruby
  (setq ruby-enable-enh-ruby-mode t)

  ;; Wakatime setup
  (setq wakatime-python-bin "$HOME/.pyenv/version/2.7.8/bin/python")

  (setq projectile-tags-command "/usr/local/bin/ctags -Re -f %s %s")

  ;; Fix backgrounding of emacs process
  (define-key evil-normal-state-map "\C-z" 'suspend-emacs)

  ;; Ctrl-s to save
  (define-key evil-normal-state-map "\C-s" 'save-buffer)

  ;; Ruby key maps
  (evil-define-key 'insert enh-ruby-mode-map "\C-l" (kbd " => "))
  (evil-define-key 'normal enh-ruby-mode-map "\C-t" 'ruby-test-run)
  (evil-define-key 'normal enh-ruby-mode-map "\C-l" 'ruby-test-run-at-point)

  ;; Python key maps
  (evil-define-key 'normal python-mode-map "\C-i" 'evil-jump-forward)

  (add-hook
   'enh-ruby-mode-hook
   '(lambda ()
      (setq enh-ruby-deep-indent-paren nil
            evil-shift-width 2)))

  ;; (add-hook 'clojure-mode-hook #'paredit-mode)

  ;; Custom Spacemacs keys
  (evil-leader/set-key "ot" 'align-regexp)
  (evil-leader/set-key "oi" 'indent-buffer)

  (load-file "~/.dotfiles/spacemacs.private")
)

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ahs-case-fold-search nil)
 '(ahs-default-range (quote ahs-range-whole-buffer))
 '(ahs-idle-interval 0.25)
 '(ahs-idle-timer 0 t)
 '(ahs-inhibit-face-list nil)
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   ["#272822" "#F92672" "#A6E22E" "#E6DB74" "#66D9EF" "#FD5FF0" "#A1EFE4" "#F8F8F2"])
 '(compilation-message-face (quote default))
 '(custom-safe-themes
   (quote
    ("4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "05c3bc4eb1219953a4f182e10de1f7466d28987f48d647c01f1f0037ff35ab9a" "33bb2c9b6e965f9c3366c57f8d08a94152954d4e2124dc621953f5a8d7e9ca41" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default)))
 '(fci-rule-color "#49483E" t)
 '(highlight-changes-colors ("#FD5FF0" "#AE81FF"))
 '(highlight-tail-colors
   (quote
    (("#49483E" . 0)
     ("#67930F" . 20)
     ("#349B8D" . 30)
     ("#21889B" . 50)
     ("#968B26" . 60)
     ("#A45E0A" . 70)
     ("#A41F99" . 85)
     ("#49483E" . 100))))
 '(magit-diff-use-overlays nil)
 '(ring-bell-function (quote ignore) t)
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#F92672")
     (40 . "#CF4F1F")
     (60 . "#C26C0F")
     (80 . "#E6DB74")
     (100 . "#AB8C00")
     (120 . "#A18F00")
     (140 . "#989200")
     (160 . "#8E9500")
     (180 . "#A6E22E")
     (200 . "#729A1E")
     (220 . "#609C3C")
     (240 . "#4E9D5B")
     (260 . "#3C9F79")
     (280 . "#A1EFE4")
     (300 . "#299BA6")
     (320 . "#2896B5")
     (340 . "#2790C3")
     (360 . "#66D9EF"))))
 '(vc-annotate-very-old-color nil)
 '(wakatime-api-key "" t)
 '(wakatime-cli-path "/usr/local/bin/wakatime")
 '(wakatime-python-bin "$HOME/.pyenv/versions/2.7.8/bin/python" t)
 '(weechat-color-list
   (unspecified "#272822" "#49483E" "#A20C41" "#F92672" "#67930F" "#A6E22E" "#968B26" "#E6DB74" "#21889B" "#66D9EF" "#A41F99" "#FD5FF0" "#349B8D" "#A1EFE4" "#F8F8F2" "#F8F8F0")))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil))))
 '(company-tooltip-common ((t (:inherit company-tooltip :weight bold :underline nil))))
 '(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :weight bold :underline nil)))))
