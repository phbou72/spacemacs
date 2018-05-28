;;; packages.el --- prettier Layer packages File for Spacemacs
;;
;; Copyright (c) 2012-2018 Sylvain Benner & Contributors
;;
;; Author: Sylvain Benner <sylvain.benner@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(setq prettier-packages '(prettier-js))

(defun prettier/init-prettier-js ()
  (use-package prettier-js
    :defer t
    :init
    (dolist (x spacemacs--prettier-modes)
      (spacemacs/set-leader-keys-for-major-mode (car x) "=" (cdr x)))))
