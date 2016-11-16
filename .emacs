;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/"))
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
 '(appt-display-format (quote window))
 '(appt-display-interval 10)
 '(appt-message-warning-time 60)
 '(cua-mode t nil (cua-base))
 '(custom-enabled-themes (quote (leuven-mod)))
 '(custom-safe-themes
   (quote
    ("94d9bf409a8197f1f8cf2d994bdff12daf956f68d7c0c3e4f85282c634bddaa3" "d04e87dfc6a49fad6fb1b4fba305d0d4254f61d933c5a49c4c7e7b72f518dac1" "7c047b56f9878197c8f188f19539d7ba666090a4fbd0ba05b199140170d613ac" default)))
 '(diary-comment-start "#")
 '(diary-entry-marker (quote font-lock-warning-face))
 '(display-time-mode t)
 '(doc-view-pdf->png-converter-function (quote doc-view-pdf->png-converter-mupdf))
 '(doc-view-pdfdraw-program "mudraw")
 '(doc-view-resolution 200)
 '(ido-grid-mode-max-columns 5)
 '(inferior-octave-startup-args (quote ("-i" "--line-editing")))
 '(inhibit-startup-screen t)
 '(initial-major-mode (quote org-mode))
 '(initial-scratch-message "* UNSAVED TEXT/THOUGHTS")
 '(menu-bar-mode nil)
 '(org-agenda-files
   (quote
    ("~/org/LifeManagement.org" "~/org/OptimizationMethods.org" "~/org/Transients.org" "~/org/notes.org")))
 '(org-agenda-span (quote fortnight))
 '(org-babel-tangle-lang-exts
   (quote
    (("python" . "py")
     ("emacs-lisp" . "el")
     ("elisp" . "el")
     ("octave" . "m"))))
 '(org-catch-invisible-edits (quote smart))
 '(org-ctrl-k-protect-subtree t)
 '(org-ditaa-jar-path "~/.emacs.d/elpa/contrib/scripts/ditaa.jar")
 '(org-export-backends (quote (ascii html icalendar latex odt)))
 '(org-export-with-toc nil)
 '(org-list-allow-alphabetical t)
 '(org-outline-path-complete-in-steps nil)
 '(org-refile-use-outline-path t)
 '(org-special-ctrl-a/e t)
 '(org-special-ctrl-k t)
 '(package-selected-packages
   (quote
    (counsel swiper ido-grid-mode smex paredit ace-window hydra clojure-mode excorporate math-symbol-lists avy beacon anzu)))
 '(scroll-bar-mode nil)
 '(send-mail-function (quote smtpmail-send-it))
 '(show-paren-mode t)
 '(tool-bar-mode nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "DejaVu Sans Mono" :foundry "unknown" :slant normal :weight normal :height 105 :width normal)))))

;; ;; Modes

(global-auto-complete-mode 1)
(ido-mode 1)
(ido-everywhere 1)
(require 'ido-ubiquitous)
(ido-ubiquitous-mode 1)
(ido-grid-mode 1)
(anzu-mode 1)
(require 'doc-view)
;; 					;(auto-complete-mode 1)
;; ;;(require 'key-chord)
;; ;; (ivy-mode 1)
;; ;; (setq ivy-use-virtual-buffers t)
;; ;; (global-set-key "\C-s" 'swiper)
;; ;; (global-set-key (kbd "C-c C-r") 'ivy-resume)
;; ;; (global-set-key (kbd "<f6>") 'ivy-resume)
;; ;; (global-set-key (kbd "M-x") 'counsel-M-x)
;; ;; (global-set-key (kbd "C-x C-f") 'counsel-find-file)
;; ;; (global-set-key (kbd "<f1> f") 'counsel-describe-function)
;; ;; (global-set-key (kbd "<f1> v") 'counsel-describe-variable)
;; ;; (global-set-key (kbd "<f1> l") 'counsel-load-library)
;; ;; (global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
;; ;; (global-set-key (kbd "<f2> u") 'counsel-unicode-char)
;; ;; (global-set-key (kbd "C-c g") 'counsel-git)
;; ;; (global-set-key (kbd "C-c j") 'counsel-git-grep)
;; ;; (global-set-key (kbd "C-c k") 'counsel-ag)
;; ;; (global-set-key (kbd "C-x l") 'counsel-locate)
;; ;; (global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
;; ;; (define-key read-expression-map (kbd "C-r") 'counsel-expression-history)

;; 					;(swiper-mode-1)
(appt-activate) ;; not really a mode, but similiar
(beacon-mode 1)

;; 					;(global-company-mode)
;; 					;(add-to-list 'company-backends 'company-math-symbols-unicode)
;; (global-set-key (kbd "<C-iso-lefttab>") 'company-complete)

;; ;;

;; (add-to-list 'auto-mode-alist
;; 	     '("\\.m\\'" . octave-mode))
;; (add-hook 'html-mode-hook '(lambda() ((mark-whole-buffer)
;; 				      (shr-render-region)
;; 				      )))

;; ;; (setq octave-mode-hook
;; ;;       (lambda () (progn (setq octave-comment-char ?%)
;; ;;                         (setq comment-start "%% ")
;; ;;                         (setq comment-add 1))))

;;(pdf-tools-install)
(load-file "~/oc/.emacs.d/init-octave.el")
(add-to-list 'load-path "~/oc/sharedmacs/")
;; (add-hook 'clojure-mode-hook #'paredit-mode)
 (add-hook 'text-mode-hook 'visual-line-mode)

;; Org Customizations
(setq org-agenda-include-diary t)
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
(setq org-directory "~/org")
(setq org-default-notes-file (concat org-directory "/notes.org"))
(define-key global-map "\C-cc" 'org-capture)
(setq org-agenda-include-diary t)
(setq org-babel-load-languages
	 '((ditaa . t)
	(emacs-lisp . t)
	(python .t)
	(sh . t)
	(octave . t)))
(setq org-confirm-babel-evaluate nil)

(load-file "~/oc/common.el")
;; ;(require 'org-protocol)

;; ;;Mail Mode
;; (add-hook 'message-mode-hook 'turn-on-orgtbl)
;; (add-hook 'message-mode-hook 'turn-on-orgstruct++)

;; (setenv "MAILHOST" "outlook.office365.com")
;; (setq rmail-primary-inbox-list '("995:adg81")
;;       rmail-pop-password-required t)

;; ;;full screen
;; (set-frame-parameter nil 'fullscreen 'maximized)


;; 					; TODO script this sort of thing for execution at night time
;; 					; xrandr --output LVDS1 --gamma 0.8:.5:0.01

;; 					;EXWM not working :(
;; 					; (require 'exwm)
;; 					; (require 'exwm-config)
;; 					; (exwm-config-default)

;; ;;Functions
(defun sudo-edit (&optional arg)
  "Edit currently visited file as root.

 With a prefix ARG prompt for a file to visit.
 Will also prompt for a file to visit if current
 buffer is not visiting a file."
  (interactive "P")
  (if (or arg (not buffer-file-name))
      (find-file (concat "/sudo:root@localhost:"
			 (ido-read-file-name "Find file(as root): ")))
    (find-alternate-file (concat "/sudo:root@localhost:" buffer-file-name))))

(defun xah-copy-file-path (&optional *dir-path-only-p)
  "Copy the current buffer's file path or dired path to `kill-ring'.
 Result is full path.
 If `universal-argument' is called first, copy only the dir path.
 URL `http://ergoemacs.org/emacs/emacs_copy_file_path.html'
 Version 2016-07-17"
  (interactive "P")
  (let ((-fpath
	 (if (equal major-mode 'dired-mode)
	     (expand-file-name default-directory)
	   (if (null (buffer-file-name))
	       (user-error "Current buffer is not associated with a file.")
	     (buffer-file-name)))))
    (kill-new
     (if (null *dir-path-only-p)
	 (progn
	   (message "File path copied: 「%s」" -fpath)
	   -fpath
	   )
       (progn
	 (message "Directory path copied: 「%s」" (file-name-directory -fpath))
	 (file-name-directory -fpath))))))

;; (require 'math-symbol-lists)
;; (quail-define-package "math" "UTF-8" "Ω" t)
;; (quail-define-rules ; add whatever extra rules you want to define here...
;;  ("\\from"    #X2190)
;;  ("\\to"      #X2192)
;;  ("\\lhd"     #X22B2)
;;  ("\\rhd"     #X22B3)
;;  ("\\unlhd"   #X22B4)
;;  ("\\unrhd"   #X22B5))
;; (mapc (lambda (x)
;; 	(if (cddr x)
;; 	    (quail-defrule (cadr x) (car (cddr x)))))
;;       (append math-symbol-list-basic math-symbol-list-extended))

;; ;;Hydra
 (defhydra hydra-toggle (:color blue)
   "toggle"
   ("a" abbrev-mode "abbrev")
   ("d" toggle-debug-on-error "debug")
   ("f" auto-fill-mode "fill")
   ("t" toggle-truncate-lines "truncate")
   ("p" artist-mode "artist")
   ("l" linum-mode "lines")
   ("c" column-number-mode "cols")
   ("w" whitespace-mode "whitespace")
   ("q" nil "cancel"))
(global-set-key (kbd "C-c M-t") 'hydra-toggle/body)

 (defhydra hydra-zoom (global-map "<f2>")
   "zoom"
   ("g" text-scale-increase "in")
   ("l" text-scale-decrease "out"))

;; (defun hydra-universal-argument (arg)
;;   (interactive "P")
;;   (setq prefix-arg (if (consp arg)
;; 		       (list (* 4 (car arg)))
;; 		     (if (eq arg '-)
;; 			 (list -4)
;; 		       '(4)))))

;; (global-unset-key "\C-\M-w")


(defhydra hydra-window (global-map "C-M-w")
  "window"
  ;; should there me something which
  ("a" ace-window "ace")
  ("u" hydra-universal-argument "universal")
  ("s" (lambda () (interactive) (ace-window 4)) "swap")
  ("d" (lambda () (interactive) (ace-window 16)) "delete"))

;; ;;Best moving around function
(global-set-key (kbd "C-S-h") 'windmove-left)
(global-set-key (kbd "C-S-w") 'windmove-down)
(global-set-key (kbd "C-S-c") 'windmove-up)
(global-set-key (kbd "C-S-n") 'windmove-right)


;; ;;Keyboard Customizations
(global-unset-key "\C-xf")
(global-set-key "\C-xf" 'find-file)

(global-unset-key "\C-xz")
(global-set-key "\C-xz" 'undo)

(global-unset-key "\M-z")
(global-set-key "\M-z" 'repeat)

(global-set-key "\C-xc" 'enlarge-window)
(global-set-key "\C-xw" 'shrink-window)

(global-set-key (kbd "C-x C-r") 'sudo-edit)
(global-unset-key (kbd "C-:"))

(global-set-key (kbd "M-g f") 'avy-goto-line)
(global-set-key "\M-C" 'xah-copy-file-path)
(global-unset-key "\C-x\C-b")
(global-set-key "\C-x\C-b" 'buffer-menu)
(global-unset-key "\M-gc")
(global-set-key "\M-gc" 'avy-goto-char)
(global-unset-key"\C-x\C-d")
(global-set-key"\C-x\C-d" 'dired)
(global-unset-key"\M-x")
(global-set-key "\M-x" 'smex)
(global-set-key (kbd "<s-insert>") 'my-org-screenshot)

(add-hook 'after-change-major-mode-hook
	  '(lambda () (font-lock-add-keywords
		       nil
		       '(("\\([0-9]+\\)"
			  1 font-lock-constant-face)))))

(setq calendar-latitude 40.44)
(setq calendar-longitude -79.9)
(setq calendar-location-name "Pitt")
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)


(server-start)
