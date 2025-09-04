;;;; -*-  Mode: Lisp; Syntax: ANSI-Common-Lisp; Base: 10 -*-
;
; This code is licensed under the terms of the modified BSD license
; ("sans advertising clause"). See the file COPYING for details.
;


(defpackage #:sapaclisp-asd
  (:use :cl :asdf))

(in-package :sapaclisp-asd)

(defsystem sapaclisp
  :name "sapaclisp"
  :components ((:file "sapa-package")

	       (:file "hacks"
		      :depends-on ("sapa-package"))
	       (:file "utilities"
		      :depends-on ("sapa-package"))
	       (:file "matrix"
		      :depends-on ("sapa-package"))
	       (:file "basic-math"
		      :depends-on ("sapa-package"))

	       (:file "dft-and-fft"
		      :depends-on ("utilities"))

	       (:file "basic-statistics"
		      :depends-on ("utilities" "basic-math" "matrix"))

	       (:file "random"
		      :depends-on ("utilities" "dft-and-fft"))

	       (:file "tapers"
		      :depends-on ("utilities" "basic-statistics"))

	       (:file "filtering"
		      :depends-on ("utilities" "basic-statistics"
				   "dft-and-fft" "tapers"))

	       (:file "acvs"
		      :depends-on ("utilities" "basic-statistics"
				   "dft-and-fft"))

	       (:file "parametric"
		      :depends-on ("utilities" "basic-math"
				   "matrix" "basic-statistics" "dft-and-fft"
				   "filtering" "random" "acvs"))

	       (:file "multitaper"
		      :depends-on ("utilities" "basic-math" "basic-statistics"
				   "dft-and-fft" "tapers" "random" "acvs"
				   "nonparametric"))

	       (:file "nonparametric"
		      :depends-on ("utilities" "basic-math" "basic-statistics"
				   "dft-and-fft" "tapers" "filtering" "random"
				   "acvs"))

	       (:file "harmonic"
		      :depends-on ("utilities" "basic-math" "basic-statistics"
				   "dft-and-fft" "tapers" "nonparametric"))))

;	       (:file "examples"
;		      :depends-on ("acvs" "basic-math" "basic-statistics"
;				   "dft-and-fft" "filtering" "hacks" "harmonic"
;				   "matrix" "multitaper" "nonparametric"
;				   "parametric" "random" "tapers"
;				   "utilities"))))
