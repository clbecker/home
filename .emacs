;; 2010-07
    (setq load-path
           (append (list nil "~/.emacs.d/site-lisp"
					"~/.emacs.d"
					"/usr/share/emacs/site-lisp"
					)
                   load-path))

;; 2012-06
;; javascript mode

;;http://steve-yegge.blogspot.co.nz/2008_03_01_archive.html
(autoload 'js2-mode "js2-mode.el" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(setq js2-use-font-lock-faces t)
(custom-set-variables  
 '(js2-basic-offset 2)  
 '(js2-bounce-indent-p t)  
)

;; 2012-06 smart tabs
;(require 'smarttabs)
;(require 'smart-tabs-mode)
;(smart-tabs-advice js2-indent-line js2-basic-offset)




;; 2010-11
(autoload 'cperl-mode "cperl-mode")

;;;;;;;;;;;;;;;;;;;;
;; set up unicode
(prefer-coding-system       'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)
(setq locale-coding-system 'utf-8)

;; From Emacs wiki
(setq x-select-request-type '(UTF8_STRING COMPOUND_TEXT TEXT STRING))


;; .emacs

;;; uncomment this line to disable loading of "default.el" at startup
;; (setq inhibit-default-init t)


;; added 7/2010
; http://emacs-template.sourceforge.net/
(require 'template)
(template-initialize)
(setq template-auto-insert t)

;; display time on options bar
(load "time")
(display-time)
(column-number-mode 1)


(iswitchb-mode t)
(global-set-key "\C-z" 'undo)

;(mouse-wheel-mode t)

;; use y or n instead of yes or no
(fset 'yes-or-no-p 'y-or-n-p)

;; disable startup message
(setq inhibit-startup-message t)
;;
(setq default-major-mode 'text-mode)

;;;; AESTHETICS ;;;;

;; set window title
(setq frame-title-format (concat  "%b - Emacs@" system-name))

;; font
(set-default-font "9x15")

;; colors
(setq ediff-current-diff-face-A 'bold-italic)

; store background color for later
;(setq _bg_color_tmp "dark slate gray")
;(add-hook 'ediff-load-hook
;          (function (lambda () 
;                      (set-face-foreground
;                        ediff-current-diff-face-B "blue")
;                      (set-face-background
;                        ediff-current-diff-face-B "red")
;                      (make-face-italic
;                        ediff-current-diff-face-B))))
;;(require 'ediff)


;;http://www.cs.utah.edu/~skuhl/software/dotemacs/dot_emacs.txt


(copy-face 'default  'ediff-even-diff-face-A)
(set-face-foreground 'ediff-even-diff-face-A "black")
(set-face-background 'ediff-even-diff-face-A "green")

(copy-face 'default  'ediff-odd-diff-face-A)
(set-face-foreground 'ediff-odd-diff-face-A "black")
(set-face-background 'ediff-odd-diff-face-A "green")

(copy-face 'ediff-even-diff-face-A 'ediff-even-diff-face-B)
(copy-face 'ediff-odd-diff-face-A 'ediff-odd-diff-face-B)
(copy-face 'ediff-even-diff-face-A 'ediff-odd-diff-face-C)
(copy-face 'ediff-odd-diff-face-A 'ediff-odd-diff-face-C)

(copy-face 'default 'ediff-current-diff-face-A)
(set-face-foreground 'ediff-current-diff-face-A "white")
(set-face-background 'ediff-current-diff-face-A "red")

(copy-face 'default 'ediff-current-diff-face-B)
(set-face-foreground 'ediff-current-diff-face-B "white")
(set-face-background 'ediff-current-diff-face-B "red")

(copy-face 'default 'ediff-current-diff-face-C)
(set-face-foreground 'ediff-current-diff-face-C "white")
(set-face-background 'ediff-current-diff-face-C "red")

(copy-face 'default 'ediff-fine-diff-face-A)
(set-face-foreground 'ediff-fine-diff-face-A "white")
(set-face-background 'ediff-fine-diff-face-A "red")

(copy-face 'ediff-fine-diff-face-A 'ediff-fine-diff-face-B)
(copy-face 'ediff-fine-diff-face-A 'ediff-fine-diff-face-C)

;;----Ediff stuff----
;; Use M-x ediff-buffers or M-x ediff-files to compare two files
;; don't open up new window
(setq ediff-window-setup-function 'ediff-setup-windows-plain)

;; show files side by side
(setq ediff-split-window-function 'split-window-horizontally)

;; use a wide window
(add-hook 'ediff-startup-hook 'ediff-toggle-wide-display)

;; ignore differences in whitespace
(setq ediff-diff-options "-w")
;;;;;;;;;;

; turn on syntax highlighting
(when (fboundp 'global-font-lock-mode) (global-font-lock-mode t))

(set-face-background 'mode-line "red")   ; bottom bar text
(set-face-foreground 'mode-line "black") 


(set-foreground-color "cyan")
(setq hl-line-face 'highlight)
(set-cursor-color "yellow")
(set-mouse-color "white")
(transient-mark-mode 1)                    ; show selections
;(set-face-foreground 'region "DeepSkyBlue")
(set-face-background 'region "navy")


;(set-foreground-color "white")

(set-face-background 'highlight "lawn green")

(set-face-foreground 'font-lock-builtin-face "red")
(set-face-foreground 'font-lock-comment-face "yellow")
(set-face-foreground 'font-lock-constant-face "red")
(set-face-foreground 'font-lock-function-name-face "coral")
(set-face-foreground 'font-lock-keyword-face "cyan")
(set-face-foreground 'font-lock-string-face "green3")

;(set-face-foreground 'font-lock-type-face "antiquewhite")
(set-face-foreground 'font-lock-type-face "azure")
(set-face-foreground 'font-lock-variable-name-face "light goldenrod")
(set-face-foreground 'font-lock-warning-face "red")
(set-face-foreground 'highlight "yellow")
(set-face-foreground 'font-lock-doc-face "yellow")
;(setq truncate-partial-width-windows nil)
;(setq truncate-lines nil)
;; highlight current line
;(global-hl-line-mode t)
;; enable visual feedback on selections
;(setq transient-mark-mode t)



;;;; BACKUP FILE OPTIONS ;;;;
(setq make-backup-files t)
(setq version-control t)
(setq backup-directory-alist (quote ((".*" . "/home/cbecker/emacs-backups/"))))


;;;;  TEXT FORMATTING ;;;;

;;   (custom-set-variables
;;      '(cperl-indent-parens-as-block t))

;(global-set-key (kbd "TAB") 'self-insert-command);


;;; LANGUAGE SPECIFIC STUFF ;;;;

;; added 8/2010
(setq cperl-close-paren-offset -5)
(setq cperl-continued-statement-offset 5)
;;
(setq default-tab-width 5);
(setq cperl-indent-level 5)
;(setq cperl-tab-always-indent t)
(setq tab-always-indent t)
(setq cperl-indent-parens-as-block t) ;; let hashes indent normally
(setq-default indent-tabs-mode t); or t
(define-key text-mode-map (kbd "TAB") 'self-insert-command);


;; perl environment
(add-to-list 'auto-mode-alist
                   '("\\.\\([pP][Llm]\\|al\\|mhtml\\|mh\\|md\\|t\\|js\\)\\'" . cperl-mode))
(add-to-list 'auto-mode-alist '("autohandler" . cperl-mode))
(add-to-list 'auto-mode-alist '("dhandler" . cperl-mode))


(add-to-list 'interpreter-mode-alist '("perl" . cperl-mode))
(add-to-list 'interpreter-mode-alist '("perl5" . cperl-mode))
(add-to-list 'interpreter-mode-alist '("miniperl" . cperl-mode))
; disable automatic underline of spaces at EOL
(setq cperl-invalid-face (quote off))

(setq cperl-lazy-help-time 1)
(setq cperl-label-offset 2)
(setq cperl-continued-statement-offset 4)


(setq cperl-electric-parens nil)
(setq cperl-electric-keywords nil)
(setq cperl-extra-newline-before-brace t)

;(setq cperl-close-paren-offset -4)
;(setq cperl-auto-newline t)
;(setq cperl-auto-newline-after-colon t)
;(setq cperl-brace-offset -4)
;(setq cperl-label-offset -4)

;(setq cperl-hairy t) ;; turn on all perl options


(add-hook 'cperl-mode-hook 'n-cperl-mode-hook t)
(defun n-cperl-mode-hook ()
;  (set-face-foreground 'cperl-array-face "")
;  (set-face-foreground 'cperl-hash-face "")
 (set-face-background 'cperl-array-face "none")
 (set-face-background 'cperl-hash-face "none")

;; -causes error- (set-face-foreground 'cperl-nonoverridable-face "")
)













;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; experimental ;;

;; PHP
;(setq auto-mode-alist
;  (append
; (list
;    '("\\.sgm$" . sgml-mode)
;    '("\\.sgml$" . sgml-mode)
;    '("\\.xml$" . xml-mode)
;    )
;  auto-mode-alist))

;(autoload 'xxml-mode-routine "xxml")
;(add-hook 'sgml-mode-hook 'xxml-mode-routine)
;(add-hook 'xml-mode-hook 'xxml-mode-routine)

;(require 'php-mode)
;(add-hook 'php-mode-user-hook 'turn-on-font-lock)




;; CSS-Mode
;(autoload 'css-mode "css-mode")
;(add-to-list 'auto-mode-alist '("\\.css\\'" . css-mode))
;(setq cssm-indent-function 'cssm-c-style-indenter)
;(setq cssm-indent-level '2)




(defun uniq-region (beg end)
  "Remove duplicate lines, a` la Unix uniq.
   If tempted, you can just do <<C-x h C-u M-| uniq RET>> on Unix."
  (interactive "r")
  (let ((ref-line nil))
      (uniq beg end 
		         (lambda (line) (string= line ref-line)) 
			           (lambda (line) (setq ref-line line)))))

(defun uniq-remove-dup-lines (beg end)
  "Remove all duplicate lines wherever found in a file, rather than
   just contiguous lines."
  (interactive "r")
  (let ((lines '()))
    (uniq beg end 
		     (lambda (line) (assoc line lines)) 
			     (lambda (line) (add-to-list 'lines (cons line t))))))

(defun uniq (beg end test-line add-line)
  (save-excursion
    (narrow-to-region beg end)
    (goto-char (point-min))
    (while (not (eobp))
      (if (funcall test-line (thing-at-point 'line))
		  (kill-line 1)
	   (progn
		  (funcall add-line (thing-at-point 'line))
		    (forward-line))))
    (widen)))




(defun perltidy-region ()
    "Run perltidy on the current region."
    (interactive)
    (save-excursion
      (shell-command-on-region (point) (mark) "perltidy -q -i 4 -et=4 -t" nil t)))

(defun perltidy-defun ()
    "Run perltidy on the current defun."
    (interactive)
    (save-excursion (mark-defun)
    (perltidy-region)))

(put 'downcase-region 'disabled nil)
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(js2-mode-escape-quotes nil))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
