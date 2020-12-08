;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2020 SIFT LLC. All Rights Reserved
;;;
;;;    File: "statistical-measurements"
;;;  Module: "grammar/model/sl/score-stats
;;; version: September 2020

;;; started 9/2020 to gather tests and their metrics for reading
;;; articles for the SCORE project and other articles with statistics,
;;; especially in the behavioral sciences

(in-package :sparser)

(define-category stat-measure :specializes abstract
                 :binds (
                         (value (:or quantity number hyphenated-number range)) ;; range for confidence intervals (also (x,y) for confidence 
                         ;; also ns value for p 
                         ;(described-value )
                         ;; maybe add some attribute that deals with equals vs. upper-bound so we can do p-values where this slot tells you whether it was p = 0.04 vs. p < 0.05, also sometimes for non-significant Fs, people say F(df,df) < 1
                         )
  )

(define-category one-df-stat-measure :specializes stat-measure
                 :binds ((df  number)) ;; t or chi-squared
  )

(define-category two-df-stat-measure :specializes stat-measure
                 :binds ((df1  number) ;; F measures
                         (df2 number))
                 )

(define-category interval-stat-measure :specializes stat-measure ;; confidence intervals
  )

;; rule-label-categories
(define-category no-df-statistic :specializes abstract)
(define-category one-df-statistic :specializes abstract)
(define-category two-df-statistic :specializes abstract)
(define-category interval-statistic :specializes abstract) ;; confidence intervals, etc


;; "p< 0.001"
(define-early-pattern-rule no-df-less-than
    :pattern (no-df-statistic "<" number)
    :action (:function make-no-df-stat-measure first second third))

(define-early-pattern-rule no-df-greater-than
    :pattern (no-df-statistic ">" number)
    :action (:function make-no-df-stat-measure first second third))

(define-early-pattern-rule no-df-equals
    :pattern (no-df-statistic "=" number)
    :action (:function make-no-df-stat-measure first second third))

(define-early-pattern-rule no-df-be
    :pattern (no-df-statistic be number) ;; e.g., "the mean was 10"
    :action (:function make-no-df-stat-measure first second third))

(define-early-pattern-rule no-df-of
    :pattern (no-df-statistic of number) ;; e.g., "an n of 10"
    :action (:function make-no-df-stat-measure first second third))

(define-early-pattern-rule no-df-colon
    :pattern (no-df-statistic "COLON" number) ;; e.g., "OR: 1.5" 
    :action (:function make-no-df-stat-measure first second third))


;; (no-df-statistic (:or "=" be of) number)
;; add "value of" and "statistic is"
;; really should be handled by making all stat measures able to assimilate "value" or "statistic" like proteins do
;; early rule for p is ns

(defun make-no-df-stat-measure (statistic relation value)
  (push-debug `(,statistic ,relation ,value))
  ;;/// need to extend model to take the relation into account
  ;;  Subcategorizing the measure would work.
  ;;  Value of the relation decides among them
  (make-edge-spec
   :category (itype-of (edge-referent statistic))
   :form category::n-bar
   :referent (bind-dli-variable
              'value (make-relational-number relation (edge-referent value))
              (edge-referent statistic))))

(define-early-pattern-rule one-df-paren-less-than
    :pattern (one-df-statistic "(" number ")" "<" number)
    :action (:function make-one-df-stat-measure first third fifth sixth))

(define-early-pattern-rule one-df-paren-greater-than
    :pattern (one-df-statistic "(" number ")" ">" number)
    :action (:function make-one-df-stat-measure first third fifth sixth))

(define-early-pattern-rule one-df-paren-equals
    :pattern (one-df-statistic "(" number ")" "=" number)
    :action (:function make-one-df-stat-measure first third fifth sixth))

(define-early-pattern-rule one-df-paren-be
    :pattern (one-df-statistic "(" number ")" be number)
    :action (:function make-one-df-stat-measure first third fifth sixth))

(define-early-pattern-rule one-df-paren-of
    :pattern (one-df-statistic "(" number ")" of number)
    :action (:function make-one-df-stat-measure first third fifth sixth))

(define-early-pattern-rule one-df-bracket-less-than
    :pattern (one-df-statistic "[" number "]" "<" number)
    :action (:function make-one-df-stat-measure first third fifth sixth))

(define-early-pattern-rule one-df-bracket-greater-than
    :pattern (one-df-statistic "[" number "]" ">" number)
    :action (:function make-one-df-stat-measure first third fifth sixth))

(define-early-pattern-rule one-df-bracket-equals
    :pattern (one-df-statistic "[" number "]" "=" number)
    :action (:function make-one-df-stat-measure first third fifth sixth))

(define-early-pattern-rule one-df-bracket-be
    :pattern (one-df-statistic "[" number "]" be number)
    :action (:function make-one-df-stat-measure first third fifth sixth))

(define-early-pattern-rule one-df-bracket-of
    :pattern (one-df-statistic "[" number "]" of number)
    :action (:function make-one-df-stat-measure first third fifth sixth))

(define-early-pattern-rule one-df-less-than
    :pattern (one-df-statistic number "<" number) ;; when it's a subscript
    :action (:function make-one-df-stat-measure first second third fourth))

(define-early-pattern-rule one-df-greater-than
    :pattern (one-df-statistic number ">" number)
    :action (:function make-one-df-stat-measure first second third fourth))

(define-early-pattern-rule one-df-equals
    :pattern (one-df-statistic number "=" number)
    :action (:function make-one-df-stat-measure first second third fourth))

(define-early-pattern-rule one-df-be
    :pattern (one-df-statistic number be number)
    :action (:function make-one-df-stat-measure first second third fourth))

(define-early-pattern-rule one-df-of
    :pattern (one-df-statistic number of number)
    :action (:function make-one-df-stat-measure first second third fourth))

(defun make-one-df-stat-measure (statistic df relation value)
  (push-debug `(,statistic ,df ,relation ,value))
  ;;/// need to extend model to take the relation into account
  ;;  Subcategorizing the measure would work.
  ;;  Value of the relation decides among them
  (make-edge-spec
   :category (itype-of (edge-referent statistic))
   :form category::n-bar
   :referent (bind-dli-variable
              'value (make-relational-number relation (edge-referent value))
              (bind-dli-variable
               'df (edge-referent df)
               (edge-referent statistic)))))

(define-early-pattern-rule one-df-missing-less-than
    :pattern (one-df-statistic "<" number) ;; if there's a t or r without the df listed
    :action (:function make-one-df-missing-stat-measure first second third))

(define-early-pattern-rule one-df-missing-greater-than
    :pattern (one-df-statistic ">" number)
    :action (:function make-one-df-missing-stat-measure first second third))

(define-early-pattern-rule one-df-missing-equals
    :pattern (one-df-statistic "=" number)
    :action (:function make-one-df-missing-stat-measure first second third))

(define-early-pattern-rule one-df-missing-be
    :pattern (one-df-statistic be number)
    :action (:function make-one-df-missing-stat-measure first second third))

(define-early-pattern-rule one-df-missing-of
    :pattern (one-df-statistic of number)
    :action (:function make-one-df-missing-stat-measure first second third))

(defun make-one-df-missing-stat-measure (statistic relation value)
  (push-debug `(,statistic ,relation ,value))
  ;;/// need to extend model to take the relation into account
  ;;  Subcategorizing the measure would work.
  ;;  Value of the relation decides among them
  (make-edge-spec
   :category (itype-of (edge-referent statistic))
   :form category::n-bar
   :referent (bind-dli-variable
              'value (make-relational-number relation (edge-referent value))
              (edge-referent statistic))))

(define-early-pattern-rule two-df-paren-less-than
    :pattern (two-df-statistic "(" number-sequence ")" "<" number)
    :action (:function make-two-df-stat-measure first third fifth sixth))

(define-early-pattern-rule two-df-paren-greater-than
    :pattern (two-df-statistic "(" number-sequence ")" ">" number)
    :action (:function make-two-df-stat-measure first third fifth sixth))

(define-early-pattern-rule two-df-paren-equals
    :pattern (two-df-statistic "(" number-sequence ")" "=" number)
    :action (:function make-two-df-stat-measure first third fifth sixth))

(define-early-pattern-rule two-df-paren-be
    :pattern (two-df-statistic "(" number-sequence ")" be number)
    :action (:function make-two-df-stat-measure first third fifth sixth))

(define-early-pattern-rule two-df-paren-of
    :pattern (two-df-statistic "(" number-sequence ")" of number)
    :action (:function make-two-df-stat-measure first third fifth sixth))

(define-early-pattern-rule two-df-bracket-less-than
    :pattern (two-df-statistic "[" number-sequence "]" "<" number)
    :action (:function make-two-df-stat-measure first third fifth sixth))

(define-early-pattern-rule two-df-bracket-greater-than
    :pattern (two-df-statistic "[" number-sequence "]" ">" number)
    :action (:function make-two-df-stat-measure first third fifth sixth))

(define-early-pattern-rule two-df-bracket-equals
    :pattern (two-df-statistic "[" number-sequence "]" "=" number)
    :action (:function make-two-df-stat-measure first third fifth sixth))

(define-early-pattern-rule two-df-bracket-be
    :pattern (two-df-statistic "[" number-sequence "]" be number)
    :action (:function make-two-df-stat-measure first third fifth sixth))

(define-early-pattern-rule two-df-bracket-of
    :pattern (two-df-statistic "[" number-sequence "]" of number)
    :action (:function make-two-df-stat-measure first third fifth sixth))

(defun make-two-df-stat-measure (statistic df-seq relation value)
  (push-debug `(,statistic ,df-seq ,relation ,value))
  ;;/// need to extend model to take the relation into account
  ;;  Subcategorizing the measure would work.
  ;;  Value of the relation decides among them
  (let* ((df-values (value-of 'items
                              (value-of 'value (edge-referent df-seq))))
         (df1 (car df-values))
         (df2 (second df-values)))
                     
  (make-edge-spec
   :category (itype-of (edge-referent statistic))
   :form category::n-bar
   :referent (bind-dli-variable
              'value (make-relational-number relation (edge-referent value))
              (bind-dli-variable
               'df1 df1
               (bind-dli-variable
               'df2 df2
               (edge-referent statistic)))))))

(define-early-pattern-rule two-df-no-seq-less-than
    :pattern (two-df-statistic number "," number "<" number) ;; e.g., "F1.86, 180.85=8.99"
    :action (:function make-two-df-no-seq-stat-measure first second fourth fifth sixth))

(define-early-pattern-rule two-df-no-seq-greater-than
    :pattern (two-df-statistic number "," number ">" number)
    :action (:function make-two-df-no-seq-stat-measure first second fourth fifth sixth))

(define-early-pattern-rule two-df-no-seq-equals
    :pattern (two-df-statistic number "," number "=" number)
    :action (:function make-two-df-no-seq-stat-measure first second fourth fifth sixth))

(define-early-pattern-rule two-df-no-seq-be
    :pattern (two-df-statistic number "," number be number)
    :action (:function make-two-df-no-seq-stat-measure first second fourth fifth sixth))

(define-early-pattern-rule two-df-no-seq-of
    :pattern (two-df-statistic number "," number of number)
    :action (:function make-two-df-no-seq-stat-measure first second fourth fifth sixth))

(defun make-two-df-no-seq-stat-measure (statistic df1 df2 relation value)
  (push-debug `(,statistic ,df1 ,df2 ,relation ,value))
  ;;/// need to extend model to take the relation into account
  ;;  Subcategorizing the measure would work.
  ;;  Value of the relation decides among them                     
  (make-edge-spec
   :category (itype-of (edge-referent statistic))
   :form category::n-bar
   :referent (bind-dli-variable
              'value (make-relational-number relation (edge-referent value))
              (bind-dli-variable
               'df1 (value-of 'value (edge-referent df1))
               (bind-dli-variable
               'df2 (value-of 'value (edge-referent df2))
               (edge-referent statistic))))))

(define-early-pattern-rule two-df-missing-less-than
    :pattern (two-df-statistic "<" number) ;; if there's an F without the df listed
    :action (:function make-two-df-missing-stat-measure first second third))

(define-early-pattern-rule two-df-missing-greater-than
    :pattern (two-df-statistic ">" number)
    :action (:function make-two-df-missing-stat-measure first second third))

(define-early-pattern-rule two-df-missing-equals
    :pattern (two-df-statistic "=" number)
    :action (:function make-two-df-missing-stat-measure first second third))

(define-early-pattern-rule two-df-missing-be
    :pattern (two-df-statistic be number)
    :action (:function make-two-df-missing-stat-measure first second third))

(define-early-pattern-rule two-df-missing-of
    :pattern (two-df-statistic of number)
    :action (:function make-two-df-missing-stat-measure first second third))

(defun make-two-df-missing-stat-measure (statistic relation value)
  (push-debug `(,statistic ,relation ,value))
  ;;/// need to extend model to take the relation into account
  ;;  Subcategorizing the measure would work.
  ;;  Value of the relation decides among them
  (make-edge-spec
   :category (itype-of (edge-referent statistic))
   :form category::n-bar
   :referent (bind-dli-variable
              'value (make-relational-number relation (edge-referent value))
              (edge-referent statistic))))


;; many of these currently aren't firing properly -- in the case of
;; hyphenated-number it's because it thinks there's an ambiguity with patterns
;; that use number instead so it breaks
;; in the case of range, I have no idea why it won't compose anymore
(define-early-pattern-rule interval-hyph-num ;; 95% C.I. 0.2-2.5
    :pattern (interval-statistic hyphenated-number)
    :action (:function make-interval-stat-measure first second))

(define-early-pattern-rule interval-range-num ;; 95% C.I. 0.2 to 2.5
    :pattern (interval-statistic range)
    :action (:function make-interval-stat-measure first second))

(define-early-pattern-rule interval-equals-hyph-num ;; 95% C.I. = 0.2-2.5
    :pattern (interval-statistic "=" hyphenated-number)
    :action (:function make-interval-stat-measure first third))

(define-early-pattern-rule interval-equals-range-num ;;95% CI = .176 to .355
    :pattern (interval-statistic "=" range)
    :action (:function make-interval-stat-measure first third))

(define-early-pattern-rule interval-colon-hyph-num
    :pattern (interval-statistic "COLON" hyphenated-number)
    :action (:function make-interval-stat-measure first third))

(define-early-pattern-rule interval-colon-range-num
    :pattern (interval-statistic "COLON" range)
    :action (:function make-interval-stat-measure first third))

(define-early-pattern-rule interval-be-hyph-num
    :pattern (interval-statistic be hyphenated-number)
    :action (:function make-interval-stat-measure first third))

(define-early-pattern-rule interval-be-range-num
    :pattern (interval-statistic be range)
    :action (:function make-interval-stat-measure first third))

(define-early-pattern-rule interval-of-hyph-num
    :pattern (interval-statistic of hyphenated-number)
    :action (:function make-interval-stat-measure first third))

(define-early-pattern-rule interval-of-range-num
    :pattern (interval-statistic of range)
    :action (:function make-interval-stat-measure first third))

(define-early-pattern-rule interval-comma-hyph-num ;; 95%CI, 0.46-0.96 ;; kazi_covid
    :pattern (interval-statistic "," hyphenated-number)
    :action (:function make-interval-stat-measure first third))

(define-early-pattern-rule interval-comma-range-num ;; 95% CI, -0.7% to 0.4% ;; siedner_covid
    :pattern (interval-statistic "," range)
    :action (:function make-interval-stat-measure first third))

(define-early-pattern-rule interval-bracket-hyph-num ;; 95% C.I. = [-.18 - -.05] blagov_covid
    :pattern (interval-statistic "[" hyphenated-number "]") 
    :action (:function make-interval-stat-measure first third))

(define-early-pattern-rule interval-equals-bracket-hyph-num
    :pattern (interval-statistic "=" "[" hyphenated-number "]") ;; 95% C.I. = [-.18 - -.05] blagov_covid
    :action (:function make-interval-stat-measure first fourth))


(defun make-interval-stat-measure (statistic range)
  (push-debug `(,statistic ,range))
  (let* ((range-ref (edge-referent range))
        (range-indiv (if (itypep range-ref category::range)
                         range-ref
                         (define-or-find-individual 'range ;; this is how hyphenated numbers get converted
                             :low (value-of 'left range-ref)
                             :high (value-of 'right range-ref)))))
  (make-edge-spec
   :category (itype-of (edge-referent statistic))
   :form category::n-bar
   :referent (bind-dli-variable
              'value range-indiv
              (edge-referent statistic)))))

;;  see ~/projects/cwc-integ/sparser/Sparser/code/s/analyzers/psp/patterns/problematic-numerical-examples for more of the long tail

;; many of these cause problems because the use of number causes a
;; conflict for the earlier rules that use hyphenated number

(define-early-pattern-rule interval-nums-comma ;; (95% confidence interval -0.117, -0.725)
    :pattern (interval-statistic number "," number)
    :action (:function make-interval-stat-measure-low-high first second fourth))

(define-early-pattern-rule interval-colon-nums-comma ;; 95% CI:0.01, 0.35
    :pattern (interval-statistic "COLON" number "," number)
    :action (:function make-interval-stat-measure-low-high first third fifth))

(define-early-pattern-rule interval-equals-nums-comma ;; 95% CI = 20.31, 23.93
    :pattern (interval-statistic "=" number "," number)
    :action (:function make-interval-stat-measure-low-high first third fifth))

(define-early-pattern-rule interval-nums-hyph
    ;; 95% CI 0.56- 0.99 ;; 95% CI 0.14 \u2013 0.41 ;; 95% CI -601- -51
    :pattern (interval-statistic number "-" number)
    :action (:function make-interval-stat-measure-low-high first second fourth))

(define-early-pattern-rule interval-comma-nums-hyph
    ;; 95% confidence interval [CI], 28.6- 32.7 ;; siedner_covid
    :pattern (interval-statistic "," number "-" number)
    :action (:function make-interval-stat-measure-low-high first third fifth))

(define-early-pattern-rule interval-bracket-nums-comma ;; 95% CI[-.36, -.54]
    :pattern (interval-statistic "[" number "," number "]")
    :action (:function make-interval-stat-measure-low-high first third fifth))

(define-early-pattern-rule interval-bracket-nums-semicolon ;; 95% CI[-.36; -.54]
    :pattern (interval-statistic "[" number ";" number "]")
    :action (:function make-interval-stat-measure-low-high first third fifth))

(define-early-pattern-rule interval-equals-bracket-nums-hyph
    ;; 95% C.I. = [-.18 - -.05] blagov_covid
    :pattern (interval-statistic "=" "[" number "-" number "]")
    :action (:function make-interval-stat-measure-low-high first fourth sixth))

(define-early-pattern-rule interval-equals-bracket-nums-comma ;; 95% CI = [2.58, 2.86]
    :pattern (interval-statistic "=" "[" number "," number "]")
    :action (:function make-interval-stat-measure-low-high first fourth sixth))

(define-early-pattern-rule interval-paren-nums-comma ;; 95% CI (-.02, - .01) ;; rosenfeld_covid
    :pattern (interval-statistic "(" number "," number ")")
    :action (:function make-interval-stat-measure-low-high first third fifth))

(defun make-interval-stat-measure-low-high (statistic low high)
  (push-debug `(,statistic ,low ,high))
  (make-edge-spec
   :category (itype-of (edge-referent statistic))
   :form category::n-bar
   :referent (bind-dli-variable
              'value (define-or-find-individual 'range
                         :low (edge-referent low)
                         :high (edge-referent high))
              (edge-referent statistic))))

(defmacro def-stat-measure (base-name &key stat-names spec-stat (dfs 0))
  (define-statistical-measure base-name :stat-names stat-names :spec-stat spec-stat
                              :dfs dfs))

(defun define-statistical-measure (base-name &key stat-names spec-stat (dfs 0))
  (let ((measure-name (intern (string-upcase
                               (format nil "~a-stat-measure" base-name))
                              (find-package :sparser)))
        (measure-parent (if spec-stat
                            (intern (string-upcase
                                     (format nil "~a-stat-measure" spec-stat))
                                    (find-package :sparser))
                            (case dfs
                              (0 'stat-measure)
                              (1 'one-df-stat-measure)
                              (2 'two-df-stat-measure))))
        (rule-label (if (and spec-stat (search "interval" spec-stat :test #'equal))
                        'interval-statistic
                        (case dfs
                          (0 'no-df-statistic)
                          (1 'one-df-statistic)
                          (2 'two-df-statistic))))
        (stat-names-expanded (loop for stat in stat-names
                                   append (list stat (string-append stat "-statistic")
                                                (string-append stat "- statistic")
                                                (string-append stat " statistic")
                                                (string-append stat " value")
                                                (string-append stat "-value")
                                                (string-append stat "- value")))))
    `(define-category ,measure-name
                  :specializes ,measure-parent
                  :rule-label ,rule-label
                  :realization (:noun ,stat-names-expanded))))


;; descriptive stats
(def-stat-measure "descriptive" :stat-names ("descriptive statistic"))
(def-stat-measure "sample-size" :stat-names ("sample-size" "sample size" "n" "N") :spec-stat "descriptive") 
(def-stat-measure "mean" :stat-names ("mean" "M" "m" "average" "avg" "mu" "μ") :spec-stat "descriptive") 
(def-stat-measure "median" :stat-names ("median" "mdn") :spec-stat "descriptive") 
(def-stat-measure "standard-deviation" :stat-names ("standard-deviation" "standard deviation" "SD" "stdev" "st-dev" "S.D." "Std. Dev.") :spec-stat "descriptive") 
(def-stat-measure "standard-error" :stat-names ("standard-error" "standard error" "SE" "S.E.") :spec-stat "descriptive")


(def-stat-measure "degrees-of-freedom" :stat-names ("degrees-of-freedom" "degrees of freedom" "df" "d.f." "DF"))
(def-stat-measure "p" :stat-names ("p" "p-value" "P"))
(define-category not-sig :specializes p-stat-measure
                 :bindings (:value "not significant")
                 :realization (:noun ("not significant" "ns" "NS")))
(def-stat-measure "p-rep" :stat-names ("p-rep" "prep" "probability of replicability")) 
(def-stat-measure "alpha" :stat-names ("alpha" "ɑ")) 
(def-stat-measure "z-score" :stat-names ("z-score" "z"))

;; comparison stats
(def-stat-measure "chi-squared" :stat-names ("chi-squared" "χ2" "χ-2" "chi squared" "chi2" "chi-2" "χ 2" "chi square") :dfs 1)
(def-stat-measure "t" :stat-names ("t" "tdiff") :dfs 1)
(def-stat-measure "F" :stat-names ("F") :dfs 2)

;; correlations
(def-stat-measure "correlation-coefficient" :stat-names ("correlation-coefficient" "correlation coefficient") :dfs 1) 
(def-stat-measure "r" :stat-names ("r" "Pearson's r" "Pearson correlation coefficient" "Pearson's correlation coefficient" "PCC" "Pearson product-moment correlation coefficient" "PPMCC") :spec-stat "correlation-coefficient" :dfs 1) 
(def-stat-measure "rho" :stat-names ("rho" "Spearman's rho" "Spearman's ρ" "Spearman's rank correlation coefficient" "Spearman's correlation coefficient" "ρ") :spec-stat "correlation-coefficient" :dfs 1)

(def-stat-measure "R-squared" :stat-names ("R-squared" "r-squared" "R squared" "r squared" "R2" "r2" "r-2" "𝑅̅2"))
(def-stat-measure "beta" :stat-names ("beta" "β" "B" "b")) 
(def-stat-measure "Hazard-Ratio" :stat-names ("Hazard-Ratio" "Hazard Ratio" "HR")) 
(def-stat-measure "odds-ratio" :stat-names ("odds-ratio" "odd's ratio" "odds ratio" "OR")) 

;; effect size
(def-stat-measure "effect-size" :stat-names ("effect size" "effects of size"))
(def-stat-measure "Cohens-d" :stat-names ("Cohens-d" "Cohen's d" "d") :spec-stat "effect-size") 
(def-stat-measure "partial-eta-square-effect-size" :stat-names ("partial-eta-square-effect-size" "partial eta-square effect size" "np2" "Zp2" "Zp 2" "partial eta-squared" "nP2" "η2p" "η-2p" "ηp2" "partial η2") :spec-stat "effect-size") 
(def-stat-measure "eta-squared" :stat-names ("eta-squared" "n2" "η2" "η-2") :spec-stat "effect-size") 
(def-stat-measure "generalized-eta-squared" :stat-names ("generalized-eta-squared" "generalized eta-squared" "ng2" "nG2" "ηg2" "ηG2") :spec-stat "effect-size")
(def-stat-measure "Cohens-f" :stat-names ("Cohens-f" "Cohen's f" "f") :spec-stat "effect-size") ;; this comes up in the no-enhanced recognition articlee

;; confidence intervals
(def-stat-measure "confidence-interval" :stat-names ("Confidence-Interval" "Confidence Interval" "CI" "confidence interval") :spec-stat "interval") 
(def-stat-measure "95-percent-confidence-interval" :stat-names ("95-percent-confidence-interval" "95 percent confidence interval" "95% confidence" "95% Confidence" "95%CI" "95% CI" "95% C.I." ".95 confidence interval" "95% confidence interval [CI]" "95% Confidence Interval" "95% confidence interval (CI)" "95% confidence interval") :spec-stat "confidence-interval")
(def-stat-measure "90-percent-confidence-interval" :stat-names ("90-percent-confidence-interval" "90 percent confidence interval" "90% confidence" "90% Confidence" "90%CI" "90% CI" "90% C.I." ".90 confidence interval" "90% confidence interval [CI]") :spec-stat "confidence-interval") 
(def-stat-measure "99-percent-confidence-interval" :stat-names ("99-percent-confidence-interval" "99 percent confidence interval" "99% confidence" "99% Confidence" "99%CI" "99% CI" "99% C.I." ".99 confidence interval" "99% confidence interval [CI]") :spec-stat "confidence-interval") 
;; these next two aren't really confidence intervals, they're the bounds on a confidence interval, but only one paper (Conway_covid) seems to be using them for now so not bothering making rule work to assimilate both for now ;; example  LCI = - .16, UCI = -.09
(def-stat-measure "upper-confidence-interval" :stat-names ("upper-confidence-interval" "upper confidence interval" "Upper Confidence Interval" "UCI")) 
(def-stat-measure "lower-confidence-interval" :stat-names ("lower-confidence-interval" "lower confidence interval" "Lower Confidence Interval" "LCI"))

(def-stat-measure "Pillais-trace" :stat-names ("Pillais-trace" "Pillai's trace")) 
(def-stat-measure "Cronbachs-alpha" :stat-names ("Cronbachs-alpha" "Cronbach's alpha" "Cronbach u03b1" "Cronbach alpha" "Cronbach's ɑ" "ɑ")) ;; agreement/reliability metric
(def-stat-measure "Cohens-kappa" :stat-names ("Cohens-kappa" "Cohen's kappa" "Cohen's κ" "κ")) ;; agreement/reliability metric
(def-stat-measure "Bayesian-Information-Criterion" :stat-names ("Bayesian-Information-Criterion" "Bayesian Information Criterion" "BIC")) 
(def-stat-measure "Receiver-operating-characteristic" :stat-names ("Receiver-operating-characteristic" "Receiver operating characteristic" "ROC")) 
(def-stat-measure "Area-Under-Curve" :stat-names ("Area-Under-Curve" "Area Under Curve" "AUC" "A'" "a-prime" "c-statistic" "concordance statistic")) 
(def-stat-measure "Harrels-C-index" :stat-names ("Harrels-C-index" "Harrel's C-index" "Harrel's C-statistic" "Harrel's c-statistic" "concordance index")) 
(def-stat-measure "sensitivity-index-d-prime" :stat-names ("sensitivity-index-d-prime" "sensitivity index d-prime" "sensitivity index d'" "d'" "d-prime")) 
(def-stat-measure "Schoenfeld-residuals" :stat-names ("Schoenfeld-residuals" "Schoenfeld residuals")) 
(def-stat-measure "Durbin-Watson" :stat-names ("Durbin-Watson" "Durbin Watson" "DW" "D.W." "d.w." "dw")) 
(def-stat-measure "gamma" :stat-names ("gamma" "G" "γ")) 
(def-stat-measure "SEE" :stat-names ("SEE" "S.E.E." "s.e.e." "Standard Error of Estimate"))       
(def-stat-measure "goodness-of-fit-statistic-G2" :stat-names ("goodness-of-fit-statistic-G2" "goodness-of-fit statistic G2" "G2"))
