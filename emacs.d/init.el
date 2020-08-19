(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives
             '("melpa-stable" . "http://stable.melpa.org/packages/")
)
(setq package-enable-at-startup nil)
(package-initialize)

(unless (package-installed-p 'use-package)
        (package-refresh-contents)
        (package-install 'use-package)
)
(eval-when-compile (require 'use-package))

(use-package auto-package-update
             :ensure t
             :config
             (setq auto-package-update-delete-old-versions t)
             (setq auto-package-update-hide-results t)
             (auto-package-update-maybe))
(use-package evil :ensure t :config (evil-mode t))
(use-package org :ensure t)

(setq custom-file "~/.emacs.d/.emacs-custom.el")
(load custom-file)
