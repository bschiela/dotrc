(setq inhibit-startup-screen t)

(setq custom-file "~/.emacs.d/.emacs-custom.el")
(load custom-file)

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
    :config (evil-mode t))
(use-package org
    :ensure t
    :config
    (setq org-directory "~/winhome/Dropbox/orgzly")
    (global-set-key (kbd "C-c a") 'org-agenda)
    (global-set-key (kbd "C-c c") 'org-capture)
    (global-set-key (kbd "C-c l") 'org-store-link)
    (setq org-todo-keywords
        '((sequence "TODO(t)" "NEXT(n)" "BLOCKED(k@)" "|" "CANCELLED(c@)" "DONE(d)")))
    (setq org-extend-today-until 3)
    ;;; logging
    (setq org-log-into-drawer t)
    (setq org-log-done t)
    (setq org-log-note-clock-out t)
    ;;; clocking
    (org-clock-persistence-insinuate)
    (setq org-clock-persist 'clock)
    (setq org-clock-into-drawer t)
    (setq org-clock-out-when-done t)
    (setq org-clock-out-remove-zero-time-clocks t)
    ;;; agenda
    (setq org-agenda-span 'day)
    (setq org-agenda-skip-scheduled-if-done t)
    (setq org-agenda-skip-deadline-if-done t)
    (setq org-agenda-log-mode-items '(clock))
    ;;; column view
    (setq org-columns-default-format "%30ITEM %Effort{:} %CLOCKSUM")
    ;;; capture
    (setq org-capture-templates
        '(("c" "clock into miscellaneous task" entry
            (file+olp (concat org-directory "/work.org") "Archive" "Miscellaneous")
                "* %?" :clock-in t)))
    ;;; refile
    (setq org-refile-targets '((org-agenda-files :maxlevel . 5)))
    (setq org-refile-use-outline-path 'file)
    (setq org-refile-allow-creating-parent-nodes 'confirm))
(use-package powerline
    :ensure t
    :config
    (powerline-center-evil-theme))
