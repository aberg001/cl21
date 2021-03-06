(in-package :cl21-user)
(defpackage cl21.abbr
  (:use :cl21)
  (:export :dbind
           :mvbind
           :mvcall
           :mvlist
           :mvsetq
           :mvprog1))
(in-package :cl21.abbr)

(defmacro dbind (lambda-list expression &body body)
  `(destructuring-bind ,lambda-list ,expression ,@body))

(defmacro mvbind (vars value-form &body body)
  `(multiple-value-bind ,vars ,value-form ,@body))

(defmacro mvcall (function arg &rest arguments)
  `(multiple-value-call ,function ,arg ,@arguments))

(defmacro mvlist (value-form)
  `(multiple-value-list ,value-form))

(defmacro mvsetq (vars value-form)
  `(multiple-value-setq ,vars ,value-form))

(defmacro mvprog1 (values-form &rest forms)
  `(multiple-value-prog1 ,values-form ,@forms))
