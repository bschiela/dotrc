(setq inhibit-startup-screen t)

(setq custom-file "~/.emacs.d/.emacs-custom.el")
(when (file-exists-p custom-file) (load custom-file))

(setq-default fill-column 88)
(setq-default default-input-method "TeX")

;;; open links in browser from WSL
(let ((cmd-exe "/mnt/c/Windows/System32/cmd.exe")
      (cmd-args '("/c" "start")))
    (when (file-exists-p cmd-exe)
      (setq browse-url-generic-program  cmd-exe
            browse-url-generic-args     cmd-args
            browse-url-browser-function 'browse-url-generic)))

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
(setq evil-want-C-i-jump nil)
(use-package evil
    :ensure t
    :config (evil-mode t)
    (define-key evil-motion-state-map (kbd "C-z") 'suspend-frame)
    (define-key evil-motion-state-map (kbd "C-x C-z") 'evil-emacs-state)
    (define-key evil-emacs-state-map (kbd "C-z") 'suspend-frame)
    (define-key evil-emacs-state-map (kbd "C-x C-z") 'evil-exit-emacs-state)
    (define-key evil-insert-state-map (kbd "C-z") (kbd "C-q C-z"))
    (define-key evil-insert-state-map (kbd "C-x C-z") 'evil-emacs-state)
    (define-key evil-replace-state-map (kbd "C-z") (kbd "C-q C-z"))
)
(use-package org
    :ensure t
    :config
    ;; global
    (setq org-directory "~/workspace/orgmode")
    (global-set-key (kbd "C-c a") 'org-agenda)
    (global-set-key (kbd "C-c c") 'org-capture)
    (global-set-key (kbd "C-c l") 'org-store-link)
    (setq org-todo-keywords
        '((sequence "TODO(t)" "NEXT(n)" "BLOCKED(k@)" "|" "CANCELLED(c@)" "DONE(d)")))
    (setq org-tags-column -80)
    (add-to-list `org-export-backends `org)
    (setq org-image-actual-width nil)
    ;;; logging
    (setq org-log-into-drawer t)
    (setq org-log-done t)
    (setq org-log-note-clock-out t)
    ;;; clocking
    (org-clock-persistence-insinuate)
    (setq org-clock-persist t)
    (setq org-clock-history-length 10)
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
        `(("c" "clock into miscellaneous task" entry
            (file+olp ,(concat org-directory "/work.org") "miscellaneous")
                "* %?" :clock-in t :jump-to-captured t)
          ("l" "captain's log" entry
            (file+datetree ,(concat org-directory "/captains-log.org"))
                "* %^{title}\n%T%?")))
    ;;; refile
    (setq org-refile-targets '((org-agenda-files :maxlevel . 5)))
    (setq org-refile-use-outline-path 'file)
    (setq org-refile-allow-creating-parent-nodes 'confirm)
    ;;; latex
    (setq org-latex-create-formula-image-program 'dvipng))
(use-package powerline
    :ensure t
    :config
    (powerline-center-evil-theme))
(use-package evil-org
    :ensure t
    :after org
    :config
    (add-hook 'org-mode-hook 'evil-org-mode)
    (add-hook 'evil-org-mode-hook (lambda () (evil-org-set-key-theme)))
    (require 'evil-org-agenda)
    (evil-org-agenda-set-keys))
