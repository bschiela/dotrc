(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives
             '("melpa-stable" . "http://stable.melpa.org/packages/")
)
(setq package-enable-at-startup nil)
(package-initialize)

;;; use-package
(unless (package-installed-p 'use-package)
        (package-refresh-contents)
        (package-install 'use-package))
(eval-when-compile (require 'use-package))

;;; packages
(use-package auto-package-update
    :ensure t
    :config
    (setq auto-package-update-delete-old-versions t)
    (setq auto-package-update-hide-results t)
    (auto-package-update-maybe))
(use-package evil
    :ensure t
    :init (setq evil-want-C-u-scroll t)
    :config (evil-mode t))
(use-package org
    :ensure t
    :config
    (global-set-key (kbd "C-c a") 'org-agenda)
    (global-set-key (kbd "C-c c") 'org-capture)
    (global-set-key (kbd "C-c l") 'org-store-link)
    (setq org-todo-keywords
        '((sequence "TODO" "NEXT" "BLOCKED" "BACKLOG" "CANCELLED" "DONE")))
    (setq org-log-done t)
    ;;; clocking
    (org-clock-persistence-insinuate)
    (setq org-clock-persist 'clock)
    (setq org-clock-into-drawer t)
    (setq org-clock-out-when-done t)
    (setq org-log-note-clock-out t))

;;; configuration

(setq inhibit-startup-screen t)

(setq custom-file "~/.emacs.d/.emacs-custom.el")
(load custom-file)
