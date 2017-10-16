;;; package --- Summary
;;; Commentary:
;; make flycheck happy

;;; Code:
;;;; Packages
(package-initialize)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives
             '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
;;;; Customary
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ac-ispell-fuzzy-limit 4)
 '(ac-ispell-requires 4)
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#000000" "#db4334" "#60a060" "#dc7700" "#00a2f5" "#da26ce" "#1ba1a1" "#b2af95"])
 '(ansi-term-color-vector
   [unspecified "#231e18" "#d35c5c" "#b7ba53" "#e0ac16" "#88a4d3" "#bb90e2" "#88a4d3" "#cabcb1"])
 '(column-highlight-mode nil)
 '(column-number-mode t)
 '(cua-mode t nil (cua-base))
 '(custom-enabled-themes (quote (leuven)))
 '(custom-safe-themes
   (quote
    ("a25c42c5e2a6a7a3b0331cad124c83406a71bc7e099b60c31dc28a1ff84e8c04" "4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" "4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" "43c1a8090ed19ab3c0b1490ce412f78f157d69a29828aa977dae941b994b4147" "dcf7154867ba67b250fe2c5cdc15a7d170acd9cbe6707cc36d9dd1462282224d" "2caab17a07a40c1427693d630adb45f5d6ec968a1771dcd9ea94a6de5d9f0838" default)))
 '(diary-entry-marker (quote font-lock-variable-name-face))
 '(doc-view-resolution 200)
 '(elpy-eldoc-show-current-function nil)
 '(fci-rule-color "#404040")
 '(fringe-mode 12 nil (fringe))
 '(gnus-logo-colors (quote ("#1ec1c4" "#bababa")) t)
 '(inferior-octave-startup-args (quote ("-i" "--line-editing" "--silent")))
 '(inhibit-startup-screen t)
 '(initial-major-mode (quote org-mode))
 '(initial-scratch-message
   "#+TITLE:

* what

* why

* when

* who

* where

* which

* unsorted

")
 '(linum-format " %6d ")
 '(main-line-color1 "#222232")
 '(main-line-color2 "#333343")
 '(max-lisp-eval-depth 1600)
 '(max-specpdl-size 2000)
 '(org-agenda-custom-commands
   (quote
    (("n" "Agenda and all TODOs"
      ((agenda "" nil)
       (alltodo "" nil))
      nil)
     ("A" "14 day Forcast" agenda ""
      ((org-agenda-span 15))))))
 '(org-agenda-files
   (quote
    ("~/Dropbox/Emacs/org/Lifemanagement.org" "~/Dropbox/Emacs/org/notes.org")))
 '(org-export-backends (quote (ascii beamer html icalendar latex md odt)))
 '(org-file-apps
   (quote
    ((auto-mode . emacs)
     ("\\.mm\\'" . default)
     ("\\.x?html?\\'" . default)
     ("\\.png\\'" . default)
     ("\\.pdf\\'" . default)
     (directory . emacs)
     ("\\.xls?x\\'" . system)
     ("\\.doc?x\\'" . system))))
 '(org-link-parameters
   (quote
    (("id" :follow org-id-open)
     ("bookmark" :follow org-bookmark-open :store org-bookmark-store-link)
     ("w3m" :store org-w3m-store-link)
     ("rmail" :follow org-rmail-open :store org-rmail-store-link)
     ("mhe" :follow org-mhe-open :store org-mhe-store-link)
     ("irc" :follow org-irc-visit :store org-irc-store-link)
     ("info" :follow org-info-open :export org-info-export :store org-info-store-link)
     ("gnus" :follow org-gnus-open :store org-gnus-store-link)
     ("docview" :follow org-docview-open :export org-docview-export :store org-docview-store-link)
     ("bibtex" :follow org-bibtex-open :store org-bibtex-store-link)
     ("bbdb" :follow org-bbdb-open :export org-bbdb-export :complete org-bbdb-complete-link :store org-bbdb-store-link)
     (nil)
     ("file+sys" :complete org-file-sys-complete-link)
     ("ipynb" :follow ein:org-open :help-echo "Open ipython notebook." :store ein:org-store-link)
     ("doi" :follow org--open-doi-link)
     ("elisp" :follow org--open-elisp-link)
     ("file" :complete org-file-complete-link)
     ("ftp" :follow
      (lambda
        (path)
        (browse-url
         (concat "ftp:" path))))
     ("help" :follow org--open-help-link)
     ("http" :follow
      (lambda
        (path)
        (browse-url
         (concat "http:" path))))
     ("https" :follow
      (lambda
        (path)
        (browse-url
         (concat "https:" path))))
     ("mailto" :follow
      (lambda
        (path)
        (browse-url
         (concat "mailto:" path))))
     ("message" :follow
      (lambda
        (path)
        (browse-url
         (concat "message:" path))))
     ("news" :follow
      (lambda
        (path)
        (browse-url
         (concat "news:" path))))
     ("shell" :follow org--open-shell-link))))
 '(org-modules
   (quote
    (org-bbdb org-bibtex org-docview org-gnus org-info org-irc org-mhe org-rmail org-w3m org-bookmark org-drill org-learn org-toc)))
 '(org-return-follows-link t)
 '(org-speed-commands-user
   (quote
    (("s" . org-schedule)
     ("d" . org-deadline)
     ("r" . outshine-narrow-to-subtree)
     ("w" . widen)
     ("@" . org-refile)
     ("m" . org-mark-subtree)
     ("." . org-time-stamp)
     ("!" . org-time-stamp-inactive)
     ("a" . org-toggle-archive-tag)
     ("A" . org-archive-subtree-default-with-confirmation)
     ("$" . org-encrypt-entry)
     ("`" . org-decrypt-entry))))
 '(org-structure-template-alist
   (quote
    (("sp" "#+BEGIN_SRC python :results output :exports both  :session conda
?
#+END_SRC")
     ("s" "#+BEGIN_SRC ?

#+END_SRC")
     ("e" "#+BEGIN_EXAMPLE
?
#+END_EXAMPLE")
     ("q" "#+BEGIN_QUOTE
?
#+END_QUOTE")
     ("v" "#+BEGIN_VERSE
?
#+END_VERSE")
     ("V" "#+BEGIN_VERBATIM
?
#+END_VERBATIM")
     ("c" "#+BEGIN_CENTER
?
#+END_CENTER")
     ("l" "#+BEGIN_EXPORT latex
?
#+END_EXPORT")
     ("L" "#+LaTeX: ")
     ("h" "#+BEGIN_EXPORT html
?
#+END_EXPORT")
     ("H" "#+HTML: ")
     ("a" "#+BEGIN_EXPORT ascii
?
#+END_EXPORT")
     ("A" "#+ASCII: ")
     ("i" "#+INDEX: ?")
     ("I" "#+INCLUDE: %file ?"))))
 '(package-selected-packages
   (quote
    (misc-cmds csv-mode org-link-minor-mode r-autoyas dired-filter dired-icon dired-k dired-sidebar dired-quick-sort color-theme-sanityinc-solarized dired-collapse dired-narrow dired-open js-comint org-ehtml wgrep web-mode org-beautify-theme darktooth-theme company-lua flymake-lua lua-mode luarocks rainbow-delimiters eimp rudel ess-R-data-view popwin treemacs chronos yasnippet-snippets org-mime zygospore excorporate indent-tools magit vc-fossil navi-mode outshine org-dashboard col-highlight hlinum ox-clip yafolding origami minimap expand-region ace-mc white-sand-theme org-ref literate-starter-kit company-jedi ecb hideshowvis figlet dad-joke calfw crm-custom ido-grid-mode ido-ubiquitous anzu jedi ac-anaconda ein pydoc-info flycheck-pyflakes company-anaconda org org-download company ace-jump-mode hydra ivy pdf-tools ws-butler use-package undo-tree smex smart-mode-line rainbow-mode pydoc ov org-plus-contrib org-edit-latex org-bullets mustache magithub lispy jedi-direx ivy-hydra hy-mode htmlize help-fns+ helm-projectile helm-bibtex git-messenger flyspell-correct-ivy flycheck flx elfeed drag-stuff dash-functional counsel beacon auctex aggressive-indent)))
 '(pos-tip-background-color "#36473A")
 '(pos-tip-foreground-color "#FFFFC8")
 '(powerline-color1 "#222232")
 '(powerline-color2 "#333343")
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(vc-annotate-background "#404040")
 '(vc-annotate-color-map
   (quote
    ((20 . "#c83029")
     (40 . "#db4334")
     (60 . "#959508")
     (80 . "#bcaa00")
     (100 . "#dc7700")
     (120 . "#c9d617")
     (140 . "#319448")
     (160 . "#078607")
     (180 . "#60a060")
     (200 . "#29b029")
     (220 . "#47cd57")
     (240 . "#4c8383")
     (260 . "#1ba1a1")
     (280 . "#0a7874")
     (300 . "#1e7bda")
     (320 . "#00a2f5")
     (340 . "#58b1f3")
     (360 . "#da26ce"))))
 '(vc-annotate-very-old-color "#da26ce")
 '(vc-handled-backends (quote (RCS CVS SVN SCCS Bzr Hg)))
 '(w32-symlinks-handle-shortcuts t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 98 :width normal :foundry "PfEd" :family "DejaVu Sans Mono"))))
 '(hl-line ((t (:background "SkyBlue1"))))
 '(mode-line ((t (:background "#335EA8" :foreground "#85CEEB" :box (:line-width 1 :color "#1A2F54") :height 0.9))))
 '(mode-line-inactive ((t (:background "#9B9C97" :foreground "#F0F0EF" :box (:line-width 1 :color "#4E4E4C") :height 0.9))))
 '(org-document-title ((t (:foreground "black" :weight bold :height 1.5 :family "Sans Serif"))))
 '(org-warning ((t (:background "#FFD0A0" :foreground "black" :weight bold))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "#5566FF"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "#55BB55"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "#000000"))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "#DD00DD"))))
 '(rainbow-delimiters-depth-6-face ((t (:foreground "#00AAAA"))))
 '(rainbow-delimiters-depth-7-face ((t (:foreground "#AAAA00"))))
 '(rainbow-delimiters-depth-8-face ((t (:foreground "#5555DD"))))
 '(rainbow-delimiters-depth-9-face ((t (:foreground "#22AA00")))))

;;; Manual Changes


;;;; Misc
(add-to-list 'load-path "~/.emacs.d/local/")
(add-to-list 'load-path "~/.emacs.d/elpa/")
(add-to-list 'load-path "~/.emacs.d/elpa/org-plus-contrib-20171002")
(add-to-list 'load-path "~/.emacs.d/local/use-package-2.3/")

(require 'togetherly)
(eval-after-load "replace" '(progn (require 'replace+)))
(add-hook 'kill-buffer-hook 'occur-unhighlight-visited-hits)
(substitute-key-definition 'query-replace 'query-replace-w-options global-map)
(eval-when-compile
  (require 'use-package))
(require 'org)
(require 'org-agenda)
(require 'hlinum)
;;(require 'org-gantt "~/.emacs.d/local/org-gantt.el")
(hlinum-activate)
(setq visible-bell t)
(require 'dired)
(global-set-key "\C-x\C-d" 'dired)
(global-set-key (kbd "M-<right>") (lambda () (interactive) (scroll-left 2)))
(global-set-key (kbd "M-<left>") (lambda () (interactive) (scroll-right 2)))
(global-set-key (kbd "M-<up>") (lambda () (interactive) (scroll-down 2)))
(global-set-key (kbd "M-<down>") (lambda () (interactive) (scroll-up 2)))

(global-set-key (kbd "C-M-<down>") 'windmove-down)
(global-set-key (kbd "C-M-<up>") 'windmove-up)
(global-set-key (kbd "C-M-<left>") 'windmove-left)
(global-set-key (kbd "C-M-<right>") 'windmove-right)
(global-set-key (kbd "C-x 1") 'zygospore-toggle-delete-other-windows)
(fset 'yes-or-no-p 'y-or-n-p)
(global-unset-key (kbd "C-r"))
(global-unset-key (kbd "C-x C-z"))
(define-key global-map (kbd "RET") 'newline-and-indent)
(global-subword-mode 1) ;; thanks XahLee


;; ;;;;; Lua
;; (setq lua-default-application "~/local/ulua/lua")
;;  (autoload 'lua-mode "lua-mode" "Lua editing mode." t)
;;     (add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode))
;;     (add-to-list 'interpreter-mode-alist '("lua" . lua-mode))

;; (defun lua-shell-append-to-output (string)
;;   (let ((buffer (current-buffer)))
;;     (set-buffer (process-buffer (lua-shell-get-process)))
;;     (let ((oldpoint (point)))
;;       (goto-char (process-mark (lua-shell-get-process)))
;;       (insert string)
;;       (set-marker (process-mark (lua-shell-get-process)) (point))
;;       (goto-char oldpoint))
;;     (set-buffer buffer)))

;; ;; (defadvice lua-shell-send-string
;; ;;     (around advice-lua-shell-send-string activate)
;; ;;   (interactive)
;; ;;   (let* ((append-string1
;; ;;          (if (string-match "import codecs, os;__pyfile = codecs.open.*$" string)
;; ;;              (replace-match "" nil nil string)
;; ;;            string))
;; ;;         (append-string2
;; ;;          (if (string-match "^# -\\*- coding: utf-8 -\\*-\n*$" append-string1)
;; ;;              (replace-match "" nil nil append-string1)
;; ;;            append-string1))
;; ;;         (append-string
;; ;;          (if (string-match "^\n*$" append-string2)
;; ;;              (replace-match "" nil nil append-string2)
;; ;;            append-string2)))  
;; ;;     (python-shell-append-to-output
;; ;;      (concat (string-trim-right append-string) "\n")))
;; ;;   (if (called-interactively-p 'any)
;; ;;       (call-interactively (ad-get-orig-definition 'python-shell-send-string))
;; ;;     ad-do-it))

;;;;; SR Speedbar
;; (require 'sr-speedbar)
;; (setq speedbar-show-unknown-files t)
;; (sr-speedbar-open)
;; (define-key speedbar-mode-map (kbd "\r") 'my-dired-find-file)

;;(speedbar-mode-map

;;;;; Abbreviations
(define-abbrev-table 'global-abbrev-table '(
                                            ("/?" "¿")
                                            ("/s" "σ")
                                            ))

(global-set-key (kbd "M-/") 'hippie-expand)



;;;;; Flyspell
(use-package flyspell-correct-ivy
  :ensure t
  :config
  (define-key flyspell-mode-map (kbd "C-.") 'flyspell-correct-previous-word-generic)
  (define-key flyspell-mode-map (kbd "C-;") 'flyspell-correct-previous-word-generic)
    (add-hook 'prog-mode-hook
              (lambda ()
                (flyspell-prog-mode)))
    (dolist (hook '(text-mode-hook))
      (add-hook hook (lambda () (flyspell-mode 1))))
    )
;; this is a sthsth spelling 
(use-package flycheck
  :ensure t
  :pin melpa-stable
  :config
  (add-hook 'prog-mode-hook 'flycheck-mode)
  )

;;;;; Hideshow
(use-package hideshow  ; This seems to be enough
  :ensure t
  :config
  (global-set-key "\C-ch" 'hs-toggle-hiding)
  (add-hook 'prog-mode-hook 'hs-minor-mode)
  )

;;;; Rainbow Delim
(use-package rainbow-delimiters
  :pin melpa-stable
  :ensure t
  :config
  (add-hook 'prog-mode-hook #'rainbow-delimiters-mode))
;;;; Popwin
(use-package popwin
  :pin melpa-stable
  :ensure t
  :config
  (setq popwin:special-display-config '(
        ("*Miniedit Help*" :noselect t)
        help-mode
        (ess-help-mode :position left :width 80 :stick t)
        (completion-(list )-mode :noselect t)
        (compilation-mode :noselect t)
        (grep-mode :noselect t)
        (occur-mode :stick t)
        ("*Pp Macroexpand Output*" :noselect t)
        "*Shell Command Output*" "*vc-diff*" "*vc-change-log*"
        (" *undo-tree*" :width 60 :position right)
        ("^\\*anything.*\\*$" :regexp t)
        "*slime-apropos*" "*slime-macroexpansion*" "*slime-description*"
        ("*slime-compilation*" :noselect t)
        "*slime-xref*"
        (sldb-mode :stick t)
        slime-repl-mode
        slime-connection-list-mode))
  (popwin-mode 1))

;;;; Anzu, Smex, and Ido
;; (global-anzu-mode +1)
;; (require 'smex)
;; ;;(global-set-key (kbd "C-c o") 'ido-occur)
;; ;;(global-set-key (kbd "C-c O") 'ido-occur-at-point)
;; ;;(define-key isearch-mode-map (kbd "C-o") 'ido-occur-from-isearch)

;; (global-set-key (kbd "M-x") 'smex)
;; (global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; ;; This is your old M-x.
;; (global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)
;; (ido-mode 1)
;; (ido-everywhere 1)
;; (ido-ubiquitous-mode 1)
;; (crm-custom-mode 1)
;; (require 'ido-grid-mode)
;; (ido-grid-mode 1)
;; (setq ido-enable-flex-matching 1)
;; (setq ido-grid-mode-max-columns 3
;;       ido-grid-mode-max-rows 5
;;       ido-grid-mode-min-rows 2
;;       ido-grid-mode-prefix-scrolls t
;;       ido-grid-mode-scroll-down #'ido-grid-mode-next-row
;;       ido-grid-mode-scroll-up #'ido-grid-mode-previous-row
;;       )

;;;; Avy
(use-package avy
  :pin melpa-stable
  :ensure t
  :config
  (global-set-key (kbd "M-a") 'avy-goto-char)
  (global-set-key (kbd "M-e") 'avy-goto-char-timer)
  )
  
;;;; IVY mode
(use-package ivy
  :ensure t
  :pin melpa-stable
  :config
  (setq magit-completing-read-function 'ivy-completing-read)
  (ivy-mode 1)
  (setq ivy-use-virtual-buffers t)
  (setq ivy-wrap 't)
  (setq enable-recursive-minibuffers t)
  (global-set-key "\C-s" 'swiper)
  (global-set-key (kbd "C-c C-r") 'ivy-resume)
  (global-set-key (kbd "<f6>") 'ivy-resume)
  (global-set-key (kbd "M-x") 'counsel-M-x)
  (global-set-key (kbd "C-x C-f") 'counsel-find-file)
  (global-set-key (kbd "C-h f") 'counsel-describe-function)
  (global-set-key (kbd "C-h v") 'counsel-describe-variable)
  (global-set-key (kbd "C-h l") 'counsel-find-library)
  (global-set-key (kbd "C-h +") 'counsel-info-lookup-symbol)
  (global-set-key (kbd "C-h u") 'counsel-unicode-char)
  (global-set-key (kbd "C-c g") 'counsel-git)
  (global-set-key (kbd "C-c j") 'counsel-git-grep)
  (global-set-key (kbd "C-c k") 'counsel-ag)
  (global-set-key (kbd "C-x l") 'counsel-locate)
  ;;(global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
  (define-key read-expression-map (kbd "C-r") 'counsel-expression-history)
  )
;;;; Ace Jump NOT USED ANYMORE
;; (use-package ace-jump-mode
;;   :ensure t
;;   :config
;;   (autoload
;;     'ace-jump-mode
;;     "ace-jump-mode"
;;     "Emacs quick move minor mode"
;;     t)
;;   ;; you can select the key you prefer to
;;   (define-key global-map (kbd "M-g") 'ace-jump-mode)
;;   )
  (global-set-key (kbd "C-x k") 'kill-this-buffer)
  (global-set-key (kbd "C-x C-b") 'buffer-menu)


;;;; Org

;;;;; Indent and startup
(setq org-startup-indented t
      org-startup-folded 'content)

;;;;; Babel

(org-babel-do-load-languages
 'org-babel-load-languages
 '((ditaa . t)))

(setq org-confirm-babel-evaluate 'nil
      org-export-babel-evaluate 'nil
      org-src-window-setup 'other-frame;;'current-window
      org-src-preserve-indentation t)


;;;;; Todo Keywords

(setq org-todo-keywords
      '(
        (sequence "IDEA(i)" "TODO(t)" "STARTED(s)" "NEXT(n)" "WAITING(w)" "|" "DONE(d)")
        (sequence "|" "CANCELED(c)" "DELEGATED(l)" "SOMEDAY(f)")
        ))

(setq org-todo-keyword-faces
      '(("IDEA" . (:foreground "GoldenRod" :weight bold))
        ("NEXT" . (:foreground "IndianRed1" :weight bold))
        ("STARTED" . (:foreground "OrangeRed" :weight bold))
        ("WAITING" . (:foreground "IndianRed1" :weight bold))
        ("CANCELED" . (:foreground "LimeGreen" :weight bold))
        ("DELEGATED" . (:foreground "LimeGreen" :weight bold))
        ("SOMEDAY" . (:foreground "LimeGreen" :weight bold))
        ))

;;;;; unused BH todo keywords
;; (setq org-todo-keywords
;;       (quote ((sequence "TODO(t)" "NEXT(n)" "|" "DONE(d)")
;; 	      (sequence "WAITING(w@/!)" "HOLD(h@/!)" "|" "CANCELLED(c@/!)" "PHONE" "MEETING"))))

;; (setq org-todo-keyword-faces
;;       (quote (("TODO" :foreground "red" :weight bold)
;; 	      ("NEXT" :foreground "blue" :weight bold)
;; 	      ("DONE" :foreground "forest green" :weight bold)
;; 	      ("WAITING" :foreground "orange" :weight bold)
;; 	      ("HOLD" :foreground "magenta" :weight bold)
;; 	      ("CANCELLED" :foreground "forest green" :weight bold)
;; 	      ("MEETING" :foreground "forest green" :weight bold)
;; 	      ("PHONE" :foreground "forest green" :weight bold))))

;;;;; Tag List

(setq org-tag-alist (quote ((:startgroup)
			    ("@office" . ?o)
			    ("@gofer" . ?g)
			    ("@home" . ?h)
			    (:endgroup)
			    (:startgroup)
			    ("export"  . ?e)
			    ("noexport" . ?n)
			    (:endgroup)
			    ("DRILL" .?d)
			    ("work" .?w)
			    ("personal" .?p)
                            ("crypt" .?c)
                            ("frank " .?f) 
                            ("stephen" .?s) 
                            ("andrew " .?a) 
                            ("greg" .?r)
                            )))

(add-hook 'org-mode-hook
	  (lambda ()
	    (define-key org-mode-map "\C-cg" 'org-set-tags-command)
            (define-key org-mode-map (kbd "M-a") 'avy-goto-char)       
            (define-key org-mode-map (kbd "M-e") 'avy-goto-char-timer)))
;; ;;;;; Emails- J. Kitchin
;; (defvar *email-heading-point* nil
;;   "global variable to store point in for returning")

;; (defvar *email-to-addresses* nil
;;   "global variable to store to address in email")

;; (defun email-heading-return ()
;;   "after returning from compose do this"
;;   (switch-to-buffer (marker-buffer  *email-heading-point*))
;;   (goto-char (marker-position  *email-heading-point*))
;;   (setq *email-heading-point* nil)
;;   (org-set-property "SENT-ON" (current-time-string))
;;   ;; reset this incase you added new ones
;;   (org-set-property "TO" *email-to-addresses*)
;;   )

;; (defun email-send-action ()
;;   "send action for compose-mail"
;;   (setq *email-to-addresses* (mail-fetch-field "To")))

;; (defun email-heading ()
;;   "Send the current org-mode heading as the body of an email, with headline as the subject.
;; use these properties
;; TO
;; OTHER-HEADERS is an alist specifying additional
;; header fields.  Elements look like (HEADER . VALUE) where both
;; HEADER and VALUE are strings.

;; save when it was sent as s SENT property. this is overwritten on
;; subsequent sends. could save them all in a logbook?
;; "
;;   (interactive)
;;   ; store location.
;;   (setq *email-heading-point* (set-marker (make-marker) (point)))
;;   (org-mark-subtree)
;;   (let ((content (buffer-substring (point) (mark)))
;; 	(TO (org-entry-get (point) "TO" t))
;; 	(CC (org-entry-get (point) "CC" t))
;; 	(BCC (org-entry-get (point) "BCC" t))
;; 	(SUBJECT (nth 4 (org-heading-components)))
;; 	(OTHER-HEADERS (eval (org-entry-get (point) "OTHER-HEADERS")))
;; 	(continue nil)
;; 	(switch-function nil)
;; 	(yank-action nil)
;; 	(send-actions '((email-send-action . nil)))
;; 	(return-action '(email-heading-return)))
    
;;     (compose-mail TO SUBJECT OTHER-HEADERS continue switch-function yank-action send-actions return-action)
;;     (message-goto-body)
;;     (insert content)
;;     (when CC
;;       (message-goto-cc)
;;       (insert CC))
;;     (when BCC
;;       (message-goto-bcc)
;;       (insert BCC))
;;     (if TO
;; 	(message-goto-body)
;;       (message-goto-to))
;;     ))
;; (define-key org-mode-map (kbd "C-c RET") 'email-heading)

;;;;; Emails- org-mime + j.kitchin
;;(require 'org-mime)
(defvar *email-heading-point* nil
  "global variable to store point in for returning")

(defvar *email-to-addresses* nil
  "global variable to store to address in email")

(defun email-heading-return ()
  "after returning from compose do this"
  (switch-to-buffer (marker-buffer  *email-heading-point*))
  (goto-char (marker-position  *email-heading-point*))
  (setq *email-heading-point* nil)
  (org-set-property "SENT-ON" (current-time-string))
  ;; reset this incase you added new ones
  (org-set-property "TO" *email-to-addresses*)
  )

(defun email-send-action ()
  "send action for compose-mail"
  (setq *email-to-addresses* (mail-fetch-field "To")))

(defun email-heading ()
  "Send the current org-mode heading as the body of an email, with headline as the subject.

use these properties
TO
OTHER-HEADERS is an alist specifying additional
header fields.  Elements look like (HEADER . VALUE) where both
HEADER and VALUE are strings.

save when it was sent as s SENT property. this is overwritten on
subsequent sends. could save them all in a logbook?
"
  (interactive)
  ; store location.
  (setq *email-heading-point* (set-marker (make-marker) (point)))
  (org-mark-subtree)
  (let ((content (buffer-substring (point) (mark)))
	(TO (org-entry-get (point) "TO" t))
	(CC (org-entry-get (point) "CC" t))
	(BCC (org-entry-get (point) "BCC" t))
	(SUBJECT (nth 4 (org-heading-components)))
	(OTHER-HEADERS (eval (org-entry-get (point) "OTHER-HEADERS")))
	(continue nil)
	(switch-function nil)
	(yank-action nil)
	(send-actions '((email-send-action . nil)))
	(return-action '(email-heading-return)))
    
    (compose-mail TO SUBJECT OTHER-HEADERS continue switch-function yank-action send-actions return-action)
    (message-goto-body)
    (insert content)
    (when CC
      (message-goto-cc)
      (insert CC))
    (when BCC
      (message-goto-bcc)
      (insert BCC))
    (if TO
	(message-goto-body)
      (message-goto-to))       
    ))

(define-key org-mode-map (kbd "C-c RET") 'my-dired-find-file)

;;;;; Keys
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-iswitchb)
(define-key global-map "\C-cc" 'org-capture)
(global-set-key (kbd "C-c C-a") 'org-annotate-file)
(setq org-default-notes-file "~/Dropbox/Emacs/org/notes.org")


(setq org-use-speed-commands (lambda ()
                               (and (looking-at org-outline-regexp) (looking-back "^\**")))
      org-speed-commands-user (quote
                               (("s" . org-schedule)
                                ("d" . org-deadline)
                                ("r" . outshine-narrow-to-subtree)
                                ("P" . org-set-property)
                                ("w" . widen)
                                ("@" . org-refile)
                                ("m" . org-mark-subtree)
                                ("." . org-time-stamp)
                                ("!" . org-time-stamp-inactive)
                                ("a" . org-toggle-archive-tag)
                                ("A" . org-archive-subtree-default-with-confirmation)
                                ("$" . org-encrypt-entry)
                                ("`" . org-decrypt-entry))))

;;;;; Org agenda
(setq org-agenda-custom-commands
      '(("h" "Agenda and Home-related tasks"
	 ((agenda "")
	  (tags-todo "@home")
	  (tags "garden")
	  (tags "@gofer")
	  ))
	("o" "Agenda and Office-related tasks"
	 ((agenda "")
	  (tags-todo "work")
	  (tags "office")))))

(setq org-deadline-warning-days 2
      org-agenda-skip-scheduled-if-deadline-is-shown t
      org-agenda-span 'day
      diary-file "~/Dropbox/Emacs/org/diary"
      org-agenda-include-diary t)

(setq calendar-week-start-day 0
      calendar-intermonth-text
      '(propertize
	(format "%2d"
		(car
		 (calendar-iso-from-absolute
		  (calendar-absolute-from-gregorian (list month day year)))))
	'font-lock-face 'font-lock-function-name-face))
(setq
 calendar-latitude 40.44
 calendar-longitude -80.00
 calendar-location-name "Pitt")


;;;;;; Agenda appointments
(defun bh/org-agenda-to-appt ()
  "Erase all reminders and rebuilt reminders for today from the agenda."
  (interactive)
  (setq appt-time-msg-list nil)  ; Erases reminders
  (org-agenda-to-appt))          ; rebuilds reminders

;; Rebuild the reminders everytime the agenda is displayed
(add-hook 'org-agenda-finalize-hook 'bh/org-agenda-to-appt 'append)

;; Emacs running overnight - reset the appointments one minute after midnight
(run-at-time "24:01" nil 'bh/org-agenda-to-appt)

;;;;; Capture and Refile
(require 'org-capture)
(setq org-capture-templates
      '(("t" "Todo" entry (file+headline org-default-notes-file "Tasks")
         "* TODO %?\n  %i\n  %a")
        ("i" "Idea" entry (file+datetree org-default-notes-file "Thoughts")
         "* %?\nEntered on %U\n  %i\n  %a")
        ("s" "Shopping" entry (file+headline org-default-notes-file "Shopping")
         "* TODO %? :@gopher\nEntered on %U\n  %i\n  %a")))

(setq org-refile-use-outline-path 'nil
      org-refile-allow-creating-parent-nodes 'confirm
      org-refile-targets '((org-agenda-files . (:maxlevel . 2))))


;;;;; Export
(setq org-odt-styles-file  "~/org/styles/libreoffice-writer-template-master/Tech Docs Template.ott")

;;;;; Spell Checking

(add-to-list 'ispell-skip-region-alist '(":\\(PROPERTIES\\|LOGBOOK\\):" . ":END:"))
(add-to-list 'ispell-skip-region-alist '("#\\+BEGIN_SRC" . "#\\+END_SRC"))
(add-to-list 'ispell-skip-region-alist '("#\\+BEGIN_EXAMPLE" . "#\\+END_EXAMPLE"))

;;;;; Org Download
(require 'org-download)
(setq-default org-download-image-dir "~/Pictures/org")

;;;;; Anotations
(setq org-annotate-file-storage-file "~/Dropbox/Emacs/org/annotated.org")
(setq org-list-allow-alphabetical 1)

;;;; R and Org
 (setq inferior-R-program-name "C:/R/R-3.4.0/bin/x64/Rterm.exe")
 (require 'ob-R)
 (setq org-babel-R-command "C:/R/R-3.4.0/bin/x64/Rterm.exe --slave --no-save")
 ;; (add-hook 'R-mode-hook 'flycheck-mode)
 (add-hook 'R-mode-hook
	  (lambda ()
	    (add-to-list 'ac-sources 'ac-source-R)))

;;;; Python and Org-ob-python
(require 'ob-python)
(setq-default indent-tabs-mode nil)
(setq org-babel-python-command "python") ;.exe -i")
(setq python-shell-interpreter "ipython") ;C:/Users/agernha/AppData/Local/Continuum/Anaconda3/python.exe --i")

;; (setq jedi:server-command '("~/.emacs.d/elpa/jedi-core-20170121.610/jediepcserver.py"))
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)
(add-hook 'python-mode-hook
	  (lambda ()
	    (define-key python-mode-map "\C-cd"
	      'pydoc-at-point)
	    ))
;; Type:
;;     M-x package-install RET jedi RET
;;     M-x jedi:install-server RET
;; Then open Python file.

;; (add-to-list 'company-backends 'company-jedi)
;; (elpy-enable)


(require 'flycheck-pyflakes)
;; (add-hook 'python-mode-hook 'flycheck-mode)


;;;; Indent Tools
(require 'indent-tools)
(global-set-key (kbd "C-c >") 'indent-tools-hydra/body)
(add-hook 'python-mode-hook
          (lambda () (define-key python-mode-map (kbd "C-c >") 'indent-tools-hydra/body))
          )

;;;; Auto Complete

;; (global-auto-complete-mode)
;; (add-hook 'git-commit-mode-hook 'ac-ispell-ac-setup)
;; (add-hook 'message-mode-hook 'ac-ispell-ac-setup)

;;;; Hideshow vis   trying without this feature as it is a bit buggy anyhow
;; (autoload 'hideshowvis-enable "hideshowvis" "Highlight foldable regions")
;; (autoload 'hideshowvis-minor-mode
;;   "hideshowvis"
;;   "Will indicate regions foldable with hideshow in the fringe."
;;   'interactive)
;; (dolist (hook (list 'emacs-lisp-mode-hook
;;                     'c++-mode-hook
;; 		    'R-mode-hook))
;;   (add-hook hook 'hideshowvis-enable))


;;;; Hydras

;;;;; Buffer menu
(defhydra hydra-buffer-menu (:color pink
                                    :hint nil)
  "
^Mark^             ^Unmark^           ^Actions^          ^Search
^^^^^^^^-----------------------------------------------------------------
_m_: mark          _u_: unmark        _x_: execute       _R_: re-isearch
_s_: save          _U_: unmark up     _b_: bury          _I_: isearch
_d_: delete        ^ ^                _g_: refresh       _O_: multi-occur
_D_: delete up     ^ ^                _T_: files only: % -28`Buffer-menu-files-only
_~_: modified
"
  ("m" Buffer-menu-mark)
  ("u" Buffer-menu-unmark)
  ("U" Buffer-menu-backup-unmark)
  ("d" Buffer-menu-delete)
  ("D" Buffer-menu-delete-backwards)
  ("s" Buffer-menu-save)
  ("~" Buffer-menu-not-modified)
  ("x" Buffer-menu-execute)
  ("b" Buffer-menu-bury)
  ("g" revert-buffer)
  ("T" Buffer-menu-toggle-files-only)
  ("O" Buffer-menu-multi-occur :color blue)
  ("I" Buffer-menu-isearch-buffers :color blue)
  ("R" Buffer-menu-isearch-buffers-regexp :color blue)
  ("c" nil "cancel")
  ("v" Buffer-menu-select "select" :color blue)
  ("o" Buffer-menu-other-window "other-window" :color blue)
  ("q" quit-window "quit" :color blue))

(define-key Buffer-menu-mode-map "." 'hydra-buffer-menu/body)

;;;;;  Example 6 selective global bind
;; (when (bound-and-true-p hydra-examples-verbatim)
;;   (defhydra hydra-next-error (global-map "C-x")
;;     "next-error"
;;     ("`" next-error "next")
;;     ("j" next-error "next" :bind nil)
;;     ("k" previous-error "previous" :bind nil)))

;; This example will bind "C-x `" in `global-map', but it will not
;; bind "C-x j" and "C-x k".
;; You can still "C-x `jjk" though.

;;;;; Example 7: toggle with Ruby-style docstring
(hl-line-mode)
(hl-line-mode -1)
(defvar whitespace-mode nil)
(defhydra hydra-toggle (:color pink)
  "
_a_ abbrev-mode:       %`abbrev-mode
_d_ debug-on-error:    %`debug-on-error
_f_ auto-fill-mode:    %`auto-fill-function
_t_ truncate-lines:    %`truncate-lines
_w_ whitespace-mode:   %`whitespace-mode
_l_ linum-mode :       %`linum-mode
_h_ hl-line-mode :     %`hl-line-mode
_c_ column-hl-mode :   %`column-highlight-mode
_v_ visual-line-mode : %`visual-line-mode
"
  ("a" abbrev-mode nil)
  ("d" toggle-debug-on-error nil)
  ("f" auto-fill-mode nil)
  ("t" toggle-truncate-lines nil)
  ("w" whitespace-mode nil)
  ("l" linum-mode nil)
  ("c" column-highlight-mode nil)
  ("h" hl-line-mode nil)
  ("v" visual-line-mode nil)
  ("q" nil "quit"))
(global-set-key (kbd "\C-c m") 'hydra-toggle/body)

;;;;; ** Example 12: org-agenda-view
(defun org-agenda-cts ()
  "Control [x] toggle."
  (and (eq major-mode 'org-agenda-mode)
       (let ((args (get-text-property
                    (min (1- (point-max)) (point))
                    'org-last-args)))
         (nth 2 args))))

(defhydra hydra-org-agenda-view (:hint none)
  "
_d_: ?d? day        _g_: time grid=?g?  _a_: arch-trees
_w_: ?w? week       _[_: inactive       _A_: arch-files
_t_: ?t? fortnight  _f_: follow=?f?     _r_: clock report=?r?
_m_: ?m? month      _e_: entry text=?e? _D_: include diary=?D?
_y_: ?y? year       _q_: quit           _L__l__c_: log = ?l?"

  ("SPC" org-agenda-reset-view)
  ("d" org-agenda-day-view (if (eq 'day (org-agenda-cts)) "[x]" "[ ]"))
  ("w" org-agenda-week-view (if (eq 'week (org-agenda-cts)) "[x]" "[ ]"))
  ("t" org-agenda-fortnight-view (if (eq 'fortnight (org-agenda-cts)) "[x]" "[ ]"))
  ("m" org-agenda-month-view (if (eq 'month (org-agenda-cts)) "[x]" "[ ]"))
  ("y" org-agenda-year-view (if (eq 'year (org-agenda-cts)) "[x]" "[ ]"))
  ("l" org-agenda-log-mode (format "% -3S" org-agenda-show-log))
  ("L" (org-agenda-log-mode '(4)))
  ("c" (org-agenda-log-mode 'clockcheck))
  ("f" org-agenda-follow-mode (format "% -3S" org-agenda-follow-mode))
  ("a" org-agenda-archives-mode)
  ("A" (org-agenda-archives-mode 'files))
  ("r" org-agenda-clockreport-mode (format "% -3S" org-agenda-clockreport-mode))
  ("e" org-agenda-entry-text-mode (format "% -3S" org-agenda-entry-text-mode))
  ("g" org-agenda-toggle-time-grid (format "% -3S" org-agenda-use-time-grid))
  ("D" org-agenda-toggle-diary (format "% -3S" org-agenda-include-diary))
  ("!" org-agenda-toggle-deadlines)
  ("[" (let ((org-agenda-include-inactive-timestamps t))
         (org-agenda-check-type t 'timeline 'agenda)
         (org-agenda-redo)
         (message "Display now includes inactive timestamps as well")))
  ("q" (message "Abort") :exit t)
  ("v" nil))

;; Recommended binding:
(define-key org-agenda-mode-map "v" 'hydra-org-agenda-view/body)


;;;;; Org-Clock and Timers
(define-key org-mode-map (kbd "\C-c w") 'hydra-org-clock/body)
(defhydra hydra-org-clock (:color blue :hint nil)
   "
^Clock:^ ^In/out^     ^Edit^   ^Summary^    | ^Timers:^ ^Run^           ^Insert
-^-^-----^-^----------^-^------^-^----------|--^-^------^-^-------------^------
(_?_)    _i_n         _e_dit   _g_oto entry | (_z_)     _r_elative      ti_m_e
 ^ ^     _c_ontinue   _q_uit   _d_isplay    |  ^ ^      cou_n_tdown     i_t_em
 ^ ^     _o_ut        _w_ag  _r_eport     |  ^ ^      _p_ause toggle
 ^ ^     ^ ^          ^ ^      ^ ^          |  ^ ^      _s_top
"
   ("i" org-clock-in)
   ("c" org-clock-in-last)
   ("o" org-clock-out)

   ("e" org-clock-modify-effort-estimate)
   ("q" org-clock-cancel)
   ("w" org-set-effort)

   ("g" org-clock-goto)
   ("d" org-clock-display)
   ("r" org-clock-report)
   ("?" (org-info "Clocking commands"))

  ("r" org-timer-start)
  ("n" org-timer-set-timer)
  ("p" org-timer-pause-or-continue)
  ("s" org-timer-stop)

  ("m" org-timer)
  ("t" org-timer-item)
  ("z" (org-info "Timers")))

;;;;; Dired
(use-package dired-narrow
  :ensure t
  :bind (:map dired-mode-map
              ("/" . dired-narrow)))

(defhydra hydra-dired (:hint nil :color pink)
  "
_+_ mkdir          _v_iew           _m_ark             _(_ details        _i_nsert-subdir    wdired
_C_opy             _O_ view other   _U_nmark all       _)_ omit-mode      _$_ hide-subdir    C-x C-q : edit
_D_elete           _o_pen other     _u_nmark           _l_ redisplay      _w_ kill-subdir    C-c C-c : commit
_R_ename           _M_ chmod        _t_oggle           _g_ revert buf     _e_ ediff          C-c ESC : abort
_Y_ rel symlink    _G_ chgrp        _E_xtension mark   _s_ort             _=_ pdiff
_S_ymlink          ^ ^              _F_ind marked      _._ toggle hydra   \\ flyspell
_r_sync            ^ ^              ^ ^                ^ ^                _?_ summary
_z_ compress-file  _A_ find regexp
_Z_ compress       _Q_ repl regexp

T - tag prefix
"
  ("\\" dired-do-ispell)
  ("(" dired-hide-details-mode)
  (")" dired-omit-mode)
  ("+" dired-create-directory)
  ("=" diredp-ediff)         ;; smart diff
  ("?" dired-summary)
  ("$" diredp-hide-subdir-nomove)
  ("A" dired-do-find-regexp)
  ("C" dired-do-copy)        ;; Copy all marked files
  ("D" dired-do-delete)
  ("E" dired-mark-extension)
  ("e" dired-ediff-files)
  ("F" dired-do-find-marked-files)
  ("G" dired-do-chgrp)
  ("g" revert-buffer)        ;; read all directories again (refresh)
  ("i" dired-maybe-insert-subdir)
  ("l" dired-do-redisplay)   ;; relist the marked or singel directory
  ("M" dired-do-chmod)
  ("m" dired-mark)
  ("O" dired-display-file)
  ("o" dired-find-file-other-window)
  ("Q" dired-do-find-regexp-and-replace)
  ("R" dired-do-rename)
  ("r" dired-do-rsynch)
  ("S" dired-do-symlink)
  ("s" dired-sort-toggle-or-edit)
  ("t" dired-toggle-marks)
  ("U" dired-unmark-all-marks)
  ("u" dired-unmark)
  ("v" dired-view-file)      ;; q to exit, s to search, = gets line #
  ("w" dired-kill-subdir)
  ("Y" dired-do-relsymlink)
  ("z" diredp-compress-this-file)
  ("Z" dired-do-compress)
  ("q" nil)
  ("." nil :color blue))

(define-key dired-mode-map "." 'hydra-dired/body)


;;;;; flycheck
(defhydra hydra-flycheck
  (:pre (progn (setq hydra-lv t) (flycheck-list-errors))
        :post (progn (setq hydra-lv nil) (quit-windows-on "*Flycheck errors*"))
        :hint nil)
  "Errors"
  ("f"  flycheck-error-list-set-filter                            "Filter")
  ("n"  flycheck-next-error                                       "Next")
  ("p"  flycheck-previous-error                                   "Previous")
  ("l" flycheck-first-error                                      "First")
  ("e"  (progn (goto-char (point-max)) (flycheck-previous-error)) "Last")
  ("q"  nil))

(global-unset-key (kbd "C-M-l"))
(define-key flycheck-mode-map (kbd "C-M-l") 'hydra-flycheck/body)


;;;;; hydra-info
(define-key Info-mode-map (kbd "?") #'hydra-info/body)

(defhydra hydra-info (:color blue
                             :hint nil)
  "
Info-mode:

  ^^_]_ forward  (next logical node)       ^^_l_ast (←)        _u_p (↑)                             _f_ollow reference       _T_OC
  ^^_[_ backward (prev logical node)       ^^_r_eturn (→)      _m_enu (↓) (C-u for new window)      _i_ndex                  _d_irectory
  ^^_n_ext (same level only)               ^^_H_istory         _g_oto (C-u for new window)          _,_ next index item      _c_opy node name
  ^^_p_rev (same level only)               _<_/_t_op           _b_eginning of buffer                virtual _I_ndex          _C_lone buffer
  regex _s_earch (_S_ case sensitive)      ^^_>_ final         _e_nd of buffer                      ^^                       _a_propos

  _1_ .. _9_ Pick first .. ninth item in the node's menu.

"
  ("]"   Info-forward-node)
  ("["   Info-backward-node)
  ("n"   Info-next)
  ("p"   Info-prev)
  ("s"   Info-search)
  ("S"   Info-search-case-sensitively)

  ("l"   Info-history-back)
  ("r"   Info-history-forward)
  ("H"   Info-history)
  ("t"   Info-top-node)
  ("<"   Info-top-node)
  (">"   Info-final-node)

  ("u"   Info-up)
  ("^"   Info-up)
  ("m"   Info-menu)
  ("g"   Info-goto-node)
  ("b"   beginning-of-buffer)
  ("e"   end-of-buffer)

  ("f"   Info-follow-reference)
  ("i"   Info-index)
  (","   Info-index-next)
  ("I"   Info-virtual-index)

  ("T"   Info-toc)
  ("d"   Info-directory)
  ("c"   Info-copy-current-node-name)
  ("C"   clone-buffer)
  ("a"   info-apropos)

  ("1"   Info-nth-menu-item)
  ("2"   Info-nth-menu-item)
  ("3"   Info-nth-menu-item)
  ("4"   Info-nth-menu-item)
  ("5"   Info-nth-menu-item)
  ("6"   Info-nth-menu-item)
  ("7"   Info-nth-menu-item)
  ("8"   Info-nth-menu-item)
  ("9"   Info-nth-menu-item)

  ("?"   Info-summary "Info summary")
  ("h"   Info-help "Info help")
  ("q"   Info-exit "Info exit")
  ("C-g" nil "cancel" :color blue))
;;;;; window management
(require 'ace-window)

(defhydra hydra-window ()
  "
Movement^^        ^Split^         ^Switch^		^Resize^
----------------------------------------------------------------
_o_ ←       	_v_ertical    	_b_uffer        	_h_ X←
_e_ ↓        	_w_ horizontal	_f_ind files	_t_ X↓
_._ ↑        	_z_ undo      	_a_ce 1		_c_ X↑
_u_ →        	_Z_ reset      	_s_wap		_n_ X→
_F_ollow		_D_lt Other   	_S_ave		max_i_mize
_SPC_ cancel	_m_ono    	_d_elete	 _k_ill
"
  ("o" windmove-left )
  ("e" windmove-down )
  ("." windmove-up )
  ("u" windmove-right )
  ("h" shrink-window-horizontally)
  ("t" shrink-window)
  ("c" enlarge-window)
  ("n" enlarge-window-horizontally)
  ("b" helm-mini)
  ("f" find-file)
  ("k" kill-this-buffer)
  ("F" follow-mode)
  ("a" (lambda ()
         (interactive)
         (ace-window 1)
         (add-hook 'ace-window-end-once-hook
                   'hydra-window/body))
   )
  ("v" (lambda ()
         (interactive)
         (split-window-right)
         (windmove-right))
   )
  ("w" (lambda ()
         (interactive)
         (split-window-below)
         (windmove-down))
   )
  ("s" (lambda ()
         (interactive)
         (ace-window 4)
         (add-hook 'ace-window-end-once-hook
                   'hydra-window/body)))
  ("S" save-buffer)
  ("d" delete-window)
  ("D" (lambda ()
         (interactive)
         (ace-window 16)
         (add-hook 'ace-window-end-once-hook
                   'hydra-window/body))
   )
  ("m" delete-other-windows)
  ("i" ace-maximize-window)
  ("z" (progn
         (winner-undo)
         (setq this-command 'winner-undo))
   )
  ("Z" winner-redo)
  ("SPC" nil)
  )
(global-set-key (kbd "C-x w") 'hydra-window/body)

;;;;; GNUS
(require 'gnus)
(eval-after-load 'gnus-group
  '(progn
     (defhydra hydra-gnus-group (:color blue)
       "
----------------------------------------------------------------
_a_ctive      _l_ist         _c_osmos (read all)    _#_ mark
_g_ refresh   _s_ervers      _m_mail                _q_ cancel
"
       ("a" gnus-group-list-active); "REMOTE groups A A")
       ("l" gnus-group-list-all-groups "LOCAL groups L")
       ("c" gnus-topic-catchup-articles "Read all c")
       ("G" gnus-group-make-nnir-group "Search server G G")
       ("g" gnus-group-get-new-news "Refresh g")
       ("s" gnus-group-enter-server-mode "Servers")
       ("m" gnus-group-new-mail "Compose m OR C-x m")
       ("#" gnus-topic-mark-topic "mark #")
       ("q" nil "cancel"))
     ;; y is not used by default
     (define-key gnus-group-mode-map "y" 'hydra-gnus-group/body)))

;; gnus-summary-mode
(eval-after-load 'gnus-sum
  '(progn
     (defhydra hydra-gnus-summary (:color blue)
       "Do?"
       ("s" gnus-summary-show-thread "Show thread")
       ("h" gnus-summary-hide-thread "Hide thread")
       ("n" gnus-summary-insert-new-articles "Refresh / N")
       ("f" gnus-summary-mail-forward "Forward C-c C-f")
       ("!" gnus-summary-tick-article-forward "Mail -> disk !")
       ("p" gnus-summary-put-mark-as-read "Mail <- disk")
       ("c" gnus-summary-catchup-and-exit "Read all c")
       ("e" gnus-summary-resend-message-edit "Resend S D e")
       ("R" gnus-summary-reply-with-original "Reply with original R")
       ("r" gnus-summary-reply "Reply r")
       ("W" gnus-summary-wide-reply-with-original "Reply all with original S W")
       ("w" gnus-summary-wide-reply "Reply all S w")
       ("#" gnus-topic-mark-topic "mark #")
       ("q" nil "cancel"))
     ;; y is not used by default
     (define-key gnus-summary-mode-map "y" 'hydra-gnus-summary/body)))

;; gnus-article-mode
(eval-after-load 'gnus-art
  '(progn
     (defhydra hydra-gnus-article (:color blue)
       "Do?"
       ("f" gnus-summary-mail-forward "Forward")
       ("R" gnus-article-reply-with-original "Reply with original R")
       ("r" gnus-article-reply "Reply r")
       ("W" gnus-article-wide-reply-with-original "Reply all with original S W")
       ("o" gnus-mime-save-part "Save attachment at point o")
       ("w" gnus-article-wide-reply "Reply all S w")
       ("q" nil "cancel"))
     ;; y is not used by default
     (define-key gnus-article-mode-map "y" 'hydra-gnus-article/body)))

(eval-after-load 'message
  '(progn
     (defhydra hydra-message (:color blue)
       "Do?"
       ("ca" mml-attach-file "Attach C-c C-a")
       ("cc" message-send-and-exit "Send C-c C-c")
       ("q" nil "cancel"))
     (global-set-key (kbd "C-c C-y") 'hydra-message/body)))

;;;;; Registers
(defhydra hydra-registers ()
  "
^Basic^        ^RectWin^         ^NumbMarcos^		^Bookmarks^
----------------------------------------------------------------
_._ point      	_r_ →rect      _n_umber             _m_ark
_j_ jump       	_i_ insert     _+_ ++               _M_ark, non overwrite
_c_ copy      	_w_ →win       _i_ insert       	_b_ jump to bm
_i_ insert     	_f_ →frame     _k_ → macro 	        _l_ist bms
_+_ append	_j_ump         _j_ ← macro	        _s_ave bms
_p_ prepend
"
  ("." (call-interactively 'point-to-register))
  ("j" jump-to-register) 
  ("c" copy-to-register)
  ("i" insert-register)
  ("+" increment-register)
  ("p" prepent-to-register)
  ("r" copy-rectange-to-register)
  ("w" window-configuration-to-register)
  ("f" frameset-to-register)
  ("n" number-to-register)
  ("k" kmacro-to-register)
  ("m" bookmark-set)
  ("M" bookmark-set-no-overwrite)
  ("b" bookmark-jump)
  ("l" list-bookmarks)
  ("s" bookmark-save)
  )
(global-set-key (kbd "C-x r") 'hydra-registers/body)

  

;;;;; calendar


(defhydra hydra-calendar ()
  "
Movement^^        ^Split^         ^Switch^		^Resize^
----------------------------------------------------------------
_o_ ←       	_v_ertical    	_b_uffer        	_h_ X←
_e_ ↓        	_w_ horizontal	_f_ind files	_t_ X↓
_._ ↑        	_z_ undo      	_a_ce 1		_c_ X↑
_u_ →        	_Z_ reset      	_s_wap		_n_ X→
_F_ollow		_D_lt Other   	_S_ave		max_i_mize
_SPC_ cancel	_m_ono    	_d_elete	 _k_ill
"
  ("o" windmove-left )
  ("e" windmove-down )
  ("." windmove-up )
  ("u" windmove-right )
  ("h" shrink-window-horizontally)
  ("t" shrink-window)
  ("c" enlarge-window)
  ("n" enlarge-window-horizontally)
  ("b" ido-switch-buffer)
  ("f" ido-find-file)
  ("k" kill-this-buffer)
  ("F" follow-mode)
  ("a" (lambda ()
         (interactive)
         (ace-window 1)
         (add-hook 'ace-window-end-once-hook
                   'hydra-window/body))
   )
  ("v" (lambda ()
         (interactive)
         (split-window-right)
         (windmove-right))
   )
  ("w" (lambda ()
         (interactive)
         (split-window-below)
         (windmove-down))
   )
  ("s" (lambda ()
         (interactive)
         (ace-window 4)
         (add-hook 'ace-window-end-once-hook
                   'hydra-window/body)))
  ("S" save-buffer)
  ("d" delete-window)
  ("D" (lambda ()
         (interactive)
         (ace-window 16)
         (add-hook 'ace-window-end-once-hook
                   'hydra-window/body))
   )
  ("m" delete-other-windows)
  ("i" ace-maximize-window)
  ("z" (progn
         (winner-undo)
         (setq this-command 'winner-undo))
   )
  ("Z" winner-redo)
  ("SPC" nil)
  )
;; (global-set-key (kbd "C-x w") 'hydra-window/body)

;;;; UtF-8 Corrections
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
;; backwards compatibility as default-buffer-file-coding-system
;; is deprecated in 23.2.
(if (boundp 'buffer-file-coding-system)
    (setq-default buffer-file-coding-system 'utf-8)
  (setq default-buffer-file-coding-system 'utf-8))
;; Treat clipboard input as UTF-8 string first; compound text next, etc.
(setq x-select-request-type '(UTF8_STRING COMPOUND_TEXT TEXT STRING))



;;;; Multple cursors

(global-unset-key "\C-x\C-mf")
(global-set-key (kbd "C-)") 'ace-mc-add-multiple-cursors)
(global-set-key (kbd "C-M-)") 'ace-mc-add-single-cursor)


;;;; For xml
(require 'sgml-mode)
(require 'nxml-mode)

(add-to-list 'hs-special-modes-alist
             '(nxml-mode
               "<!--\\|<[^/>]*[^/]>"
               "-->\\|</[^/>]*[^/]>"

               "<!--"
               sgml-skip-tag-forward
               nil))

(add-hook 'nxml-mode-hook 'hs-minor-mode)

;; optional key bindings, easier than hs defaults
(define-key nxml-mode-map (kbd "C-c h") 'hs-toggle-hiding)

;;;; Xah-Lee Functions
(defun toggle-fill-paragraph ()
  ;; Based on http://xahlee.org/emacs/modernization_fill-paragraph.html
  "Fill or unfill the current paragraph, depending upon the current line length.
When there is a text selection, act on the region.
See `fill-paragraph' and `fill-region'."
  (interactive)
  ;; We set a property 'currently-filled-p on this command's symbol
  ;; (i.e. on 'toggle-fill-paragraph), thus avoiding the need to
  ;; create a variable for remembering the current fill state.
  (save-excursion
    (let* ((deactivate-mark nil)
           (line-length (- (line-end-position) (line-beginning-position)))
           (currently-filled (if (eq last-command this-command)
                                 (get this-command 'currently-filled-p)
                               (< line-length fill-column)))
           (fill-column (if currently-filled
                            most-positive-fixnum
                          fill-column)))
      (if (region-active-p)
          (fill-region (region-beginning) (region-end))
        (fill-paragraph))
      (put this-command 'currently-filled-p (not currently-filled)))))
(global-set-key (kbd "M-q") 'toggle-fill-paragraph)

(defun xah-copy-file-path (&optional *dir-path-only-p)
  "Copy the current buffer's file path (DIR-PATH-ONLY-P)
or dired path to `kill-ring'.  Result is full path.
If `universal-argument' is called first, copy only the dir path.
URL `http://ergoemacs.org/emacs/emacs_copy_file_path.html'
Version 2017-01-27"
  (interactive "P")
  (let (($fpath
         (if (equal major-mode 'dired-mode)
             (expand-file-name default-directory)
           (if (buffer-file-name)
               (buffer-file-name)
             (user-error "Current buffer is not associated with a file!")))))
    (kill-new
     (if *dir-path-only-p
         (progn
           (message "Directory path copied: 「%s」" (file-name-directory $fpath))
           (file-name-directory $fpath))
       (progn
         (message "File path copied: [%s]" $fpath)
         $fpath )))))
(global-set-key "\C-cf" 'xah-copy-file-path)
(require 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)
(global-set-key (kbd "C-S-<mouse-1>") 'mc/add-cursor-on-click)




;;;; John Kitchin's org-sparse-tree-exit
;; https://stackoverflow.com/questions/6666862/org-mode-go-back-from-sparse-tree-to-previous-visibility
(setq lexical-binding t)

(let ((*outline-data* nil))
  (defun org-save-outline-state (&optional arg type)
    (setq *outline-data* (org-outline-overlay-data t)))

  (defun org-restore-outline-state (&optional arg)
    (when *outline-data*
      (org-set-outline-overlay-data *outline-data*)
      (setq *outline-data* nil))))

(advice-add 'org-sparse-tree :before 'org-save-outline-state)
(advice-add 'org-match-sparse-tree :before 'org-save-outline-state)
(advice-add 'org-ctrl-c-ctrl-c :after 'org-restore-outline-state)

;;;; PDF-Tools


;;;; windows only stuff- and email

(when (string-equal system-type "windows-nt")
  (progn
    (setenv "PATH" (concat
                    "C:\\cygwin64\\bin" ";"
                    "C:\\cygwin64\\usr\\bin" ";"
                    "C:\\cygwin64\\usr\\local\\bin" ";"
                    (getenv "PATH")
                    ))
    (setq mail-user-agent 'message-user-agent)
    (require 'message-outlook)
    )
  )
;;;; Email
;; (setq pop3-leave-mail-on-server t)

;; (add-to-list 'gnus-secondary-select-methods '(nnml "mycompany"))
;; (setq mail-sources
;;       '((pop :server "127.0.0.1" ;; DavMail is running at localhost
;;          :port 1110
;;          :user "username"
;;          :password "password"
;;          :stream network)))

;;;; YaSnippet
;; (require 'yasnippet)
;; (yas-global-mode 1)



;;;; 'Shell' fixes

(defun comint-fix-window-size ()
  "Change process window size."
  (when (derived-mode-p 'comint-mode)
    (set-process-window-size (get-buffer-process (current-buffer))
                         (window-height)
                         (window-width))))

(defun my-shell-mode-hook ()
  "Add this hook as buffer local, so it will run once per window."
  (add-hook 'window-configuration-change-hook 'comint-fix-window-size nil t))

(add-hook 'shell-mode-hook 'my-shell-mode-hook)



;;;; Org-Crpyt
(require 'org-crypt)
(org-crypt-use-before-save-magic)
(setq org-tags-exclude-from-inheritance (quote ("crypt")))

(setq org-crypt-key nil)
;; GPG key to use for encryption
;; Either the Key ID or set to nil to use symmetric encryption.

(setq auto-save-default nil)
;; Auto-saving does not cooperate with org-crypt.el: so you need
;; to turn it off if you plan to use org-crypt.el quite often.
;; Otherwise, you'll get an (annoying) message each time you
;; start To.

;; Org turn it off only locally, you can insert this:

;; # -*- buffer-auto-save-file-name: nil; -*-

;;;; Scrolling around
(setq scroll-preserve-screen-position 1)
(global-set-key (kbd "M-n") 'scroll-up-line)
(global-set-key (kbd "M-p") 'scroll-down-line)


;;;; Outshine

(defvar outline-minor-mode-prefix "\M-#")
(require 'outshine)
(add-hook 'outline-minor-mode-hook 'outshine-hook-function)

;; ;;;; Outshine for elisp and other modes
(add-hook 'prog-mode-hook 'outline-minor-mode)
(add-hook 'LaTeX-mode-hook 'outline-minor-mode)
(add-hook 'ess-mode-hook 'outline-minor-mode)
(add-hook 'message-mode-hook 'outline-minor-mode)

(setq outshine-use-speed-commands t)

;;;; Dired and grep use org-open

(defun my-dired-find-file (&optional prefix)
  "Use cu PREFIX to open files via Org-open-file."
  (interactive "P")
  (if prefix
      (org-open-file (dired-get-file-for-visit) 'system)
    (dired-find-file)))

(define-key dired-mode-map "\r" 'my-dired-find-file)

(defun my-grep-find-file (&optional prefix)
  "Use cu PREFIX to open files via Org-open-file."
  (interactive "P")
  (if prefix
      (org-open-file (dired-get-file-for-visit) 'system)
    (dired-find-file)))

(defun xah-open-in-external-app ()
  "Open the current file or dired marked files in external app.
The app is chosen from your OS's preference.
URL `http://ergoemacs.org/emacs/emacs_dired_open_file_in_ext_apps.html'
Version 2016-10-15"
  (interactive)
  (let* (
         ($file-list
          (if (string-equal major-mode "dired-mode")
              (dired-get-marked-files)
            (list (buffer-file-name))))
         ($do-it-p (if (<= (length $file-list) 5)
                       t
                     (y-or-n-p "Open more than 5 files? "))))
    (when $do-it-p
      (cond
       ((string-equal system-type "windows-nt")
        (mapc
         (lambda ($fpath)
           (w32-shell-execute "open" (replace-regexp-in-string "/" "\\" $fpath t t))) $file-list))
       ((string-equal system-type "darwin")
        (mapc
         (lambda ($fpath)
           (shell-command
            (concat "open " (shell-quote-argument $fpath))))  $file-list))
       ((string-equal system-type "gnu/linux")
        (mapc
         (lambda ($fpath) (let ((process-connection-type nil))
                            (start-process "" nil "xdg-open" $fpath))) $file-list))))))






;;;; nicer looking outlines
(defun -add-font-lock-kwds (FONT-LOCK-ALIST)
  "Add FONT-LOCK-ALIST to keywords."
  (font-lock-add-keywords
   nil (--map (-let (((rgx uni-point) it))
                `(,rgx (0 (progn
                            (compose-region (match-beginning 1) (match-end 1)
                                            ,(concat "\t" (list uni-point)))
                            nil))))
              FONT-LOCK-ALIST)))

(defmacro add-font-locks (FONT-LOCK-HOOKS-ALIST)
  "Add FONT-LOCK-HOOKS-ALIST based on mode-hooks."
  `(--each ,FONT-LOCK-HOOKS-ALIST
     (-let (((font-locks . mode-hooks) it))
       (--each mode-hooks
         (add-hook it (-partial '-add-font-lock-kwds
                                (symbol-value font-locks)))))))

(defconst emacs-outlines-font-lock-alist
  ;; Outlines
  '(("\\(^;;;\\) "          ?■)
    ("\\(^;;;;\\) "         ?○)
    ("\\(^;;;;;\\) "        ?✤)
    ("\\(^;;;;;;\\) "       ?✸)))

(defconst lisp-outlines-font-lock-alist
  ;; Outlines
  '(("\\(^;; \\*\\) "          ?■)
    ("\\(^;; \\*\\*\\) "       ?○)
    ("\\(^;; \\*\\*\\*\\) "    ?✤)
    ("\\(^;; \\*\\*\\*\\*\\) " ?✸)))

(defconst python-outlines-font-lock-alist
  '(("\\(^# \\*\\) "          ?■)
    ("\\(^# \\*\\*\\) "       ?○)
    ("\\(^# \\*\\*\\*\\) "    ?✤)
    ("\\(^# \\*\\*\\*\\*\\) " ?✸)))

(add-font-locks
 '((emacs-outlines-font-lock-alist emacs-lisp-mode-hook)
   (lisp-outlines-font-lock-alist clojure-mode-hook hy-mode-hook)
   (python-outlines-font-lock-alist python-mode-hook)))


(require 'org-bullets)
;; make available "org-bullet-face" such that I can control the font size individually
(setq org-bullets-face-name (quote org-bullet-face))
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
(setq org-bullets-bullet-list '("■" "○" "✸" "✤" "◊" "►"  "†"))
;; use org-bullets-mode for utf8 symbols as org bullets


;;;; EDiff
(defvar ediff-do-hexl-diff nil
  "variable used to store trigger for doing diff in hexl-mode")
(defadvice ediff-files-internal (around ediff-files-internal-for-binary-files activate)
  "catch the condition when the binary files differ

the reason for catching the error out here (when re-thrown from the inner advice)
is to let the stack continue to unwind before we start the new diff
otherwise some code in the middle of the stack expects some output that
isn't there and triggers an error"
  (let ((file-A (ad-get-arg 0))
        (file-B (ad-get-arg 1))
        ediff-do-hexl-diff)
    (condition-case err
        (progn
          ad-do-it)
      (error
       (if ediff-do-hexl-diff 
           (let ((buf-A (find-file-noselect file-A))
                 (buf-B (find-file-noselect file-B)))
             (with-current-buffer buf-A
               (hexl-mode 1))
             (with-current-buffer buf-B
               (hexl-mode 1))
             (ediff-buffers buf-A buf-B))
         (error (error-message-string err)))))))

(defadvice ediff-setup-diff-regions (around ediff-setup-diff-regions-for-binary-files activate)
  "when binary files differ, set the variable "
  (condition-case err
      (progn
        ad-do-it)
    (error
     (setq ediff-do-hexl-diff
           (and (string-match-p "^Errors in diff output.  Diff output is in.*"
                                (error-message-string err))
                (string-match-p "^\\(Binary \\)?[fF]iles .* and .* differ"
                                (buffer-substring-no-properties
                                 (line-beginning-position)
                                 (line-end-position)))
                (y-or-n-p "The binary files differ, look at the differences in hexl-mode? ")))
     (error (error-message-string err)))))

;;;; Version Control System
;; so far git seems to be working well
;; (add-to-list 'vc-handled-backends 'Fossil)
;; (autoload 'vc-fossil-registered "vc-fossil")

;;(setq vc-handled-backends 'nil)
(global-set-key (kbd "C-x g") 'magit-status)
(setq vc-handled-backends (delq 'Git vc-handled-backends))

;;;; Final Commands
;; att the end- so appointments are set up when Emacs starts
(bh/org-agenda-to-appt)
(appt-activate t)

(put 'narrow-to-region 'disabled nil)

(put 'set-goal-column 'disabled nil)
(server-start)
(provide 'init.el)
;;; init.el ends here
