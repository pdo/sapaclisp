;;;-*- Mode: LISP; Package: :CL-USER; Syntax: COMMON-LISP -*-
;-----------------------------------------------------------------------------
; (c) 1993, Donald B. Percival <dbp@apl.washington.edu>
;
; This code is licensed under the terms of the modified BSD license
; ("sans advertising clause"). See the file COPYING for details.
;
; Comments about this software can be addressed to dbp@apl.washington.edu
;-----------------------------------------------------------------------------
;
;  sapa-package.lisp
;
;  In some implementations of Lisp, the first line of a Lisp file (the
;  so-called mode line) is parsed automatically when opened by an
;  editor, and, if the package indicated by the mode line does not yet
;  exist, all sorts of strange things can happen.  To circumvent this
;  annoyance, we have created this short file that does nothing more
;  than define the SAPA package from within the CL-USER package, which
;  -- according to Steele2 -- is ALWAYS supposed to exist.  The idea
;  is that you should compile and load this file PRIOR to attempting
;  to do anything with any of the other files in sapaclisp
;  contribution to StatLib.
;
;------------------------------------------------------------------------------
(in-package :CL-USER)

(if (not (find-package :SAPA))
  (defpackage :SAPA (:USE :COMMON-LISP)))
