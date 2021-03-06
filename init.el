(setenv "PATH" (concat "/opt/boxen/homebrew/bin:" (getenv "PATH")))

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(require 'setup-package)
(require 'setup-better-defaults)

(load custom-file)

(defun init--install-packages ()
  (packages-install
   '(ack
     gist
     htmlize
     flycheck
     yasnippet
     simple-httpd
     highlight-escape-sequences
     whitespace-cleanup-mode
     elisp-slime-nav
     git-commit-mode
     gitconfig-mode
     gitignore-mode
     sparql-mode)))

(init--install-packages)

(if (> (display-pixel-width) 1440)
    (set-face-attribute 'default nil :height 200)
  (set-face-attribute 'default nil :height 140))

(require 'setup-environment)
(require 'setup-key-chord)
(require 'setup-org-mode)
(require 'setup-magit)
(require 'setup-skewer)
(require 'setup-expand-region)
(require 'setup-ace-jump-mode)
(require 'setup-move-text)
(require 'setup-mu4e)
(require 'setup-smartparens)
(require 'setup-keybindings)
(require 'setup-goto-last-change)
(require 'setup-auto-complete)
(require 'setup-malabar)
(require 'setup-jad)
(require 'setup-erc)
(require 'custom-functions)
(require 'setup-helm)
(require 'setup-projectile)
(require 'setup-flyspell)
(require 'setup-salt)
(require 'setup-clojure)
(require 'setup-yasnippet)
(require 'setup-python)
(require 'setup-hipchat)

(put 'set-goal-column 'disabled nil)
(put 'narrow-to-region 'disabled nil)
