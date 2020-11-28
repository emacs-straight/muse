;;; muse-init-simple.el --- Use Emacs Muse to publish ikiwiki documents

;; Copyright (C) 2004-2020 Free Software Foundation, Inc.

;; This file is part of Emacs Muse.  It is not part of GNU Emacs.

;; Emacs Muse is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published
;; by the Free Software Foundation; either version 3, or (at your
;; option) any later version.

;; Emacs Muse is distributed in the hope that it will be useful, but
;; WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;; General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; The code in this file may be used, distributed, and modified
;; without restriction.

;;; Setup

(add-to-list 'load-path (expand-file-name "~ikiwiki/elisp/muse/lisp"))

;; Initialize
(require 'muse)          ; load generic module
(require 'muse-html)     ; load (X)HTML publishing style
(require 'muse-ikiwiki)  ; load Ikiwiki integration

;;; Settings

;; Permitted modes for <src> to colorize
(setq muse-html-src-allowed-modes
      '("ada" "apache" "asm" "awk" "c++" "c" "cc" "change-log" "context"
        "css" "diary" "diff" "dns" "domtool" "emacs-lisp" "f90" "fortran"
        "fundamental" "html" "java" "jython" "latex" "lisp" "lua" "m4"
        "makefile" "markdown" "matlab" "maxima" "message" "modula-2" "muse"
        "nroff" "octave" "org" "outline" "pascal" "perl" "ps" "python" "rst"
        "ruby" "scheme" "sgml" "sh" "slang" "sml" "sml-cm" "sml-lex" "sml-yacc"
        "sql" "tcl" "tex" "texinfo" "xml" "zone"))
;; In case someone does <src lang="muse">
(setq muse-colors-evaluate-lisp-tags nil
      muse-colors-inline-images nil)
;; In case someone does <src lang="org">
(require 'org)
(setq org-inhibit-startup t
      org-table-formula-evaluate-inline nil)

;; Don't allow dangerous tags to be published
(setq muse-publish-enable-dangerous-tags nil)

;;; Custom variables

(custom-set-variables
 '(muse-html-charset-default "utf-8")
 '(muse-html-encoding-default (quote utf-8))
 '(muse-html-meta-content-encoding (quote utf-8))
 '(muse-publish-comments-p t)
 '(muse-publish-date-format "%b. %e, %Y"))
(custom-set-faces)

;;; muse-init-simple.el ends here
