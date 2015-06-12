;;; extensions.el --- lofarris Layer extensions File for Spacemacs
;;
;; Copyright (c) 2012-2014 Sylvain Benner
;; Copyright (c) 2014-2015 Sylvain Benner & Contributors
;;
;; Author: Sylvain Benner <sylvain.benner@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3
(add-to-list 'load-path (concat user-emacs-directory "private/lofarris/lib"))

(defvar lofarris-pre-extensions
  '(
    ;; pre extension lofarriss go here
    )
  "List of all extensions to load before the packages.")

(defvar lofarris-post-extensions
  '(
    ;; post extension lofarriss go here
 	  powershell-mode   
    )
  "List of all extensions to load after the packages.")

;; For each extension, define a function lofarris/init-<extension-lofarris>
;;
;; (defun lofarris/init-my-extension ()
;;   "Initialize my extension"
;;   )
(defun lofarris/init-PowerShell-mode ()
   (use-package powershell-mode
      :mode ("\\.\\(ps1\\|psm1\\)'" . powershell-mode)
      :config
         (add-hook 'powershell-mode-hook
            (lambda () (hs-minor-mode)))
         (global-set-key (kbd "C-`") 'hs-toggle-hiding)
      :bind ("C-`" . hs-toggle-hiding)
             
   )
)
	
;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package
