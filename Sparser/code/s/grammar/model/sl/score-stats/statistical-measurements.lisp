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
                         (value (:or quantity number hyphenated-number)) ;; range for confidence intervals (also (x,y) for confidence 
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

;; rule-label-categories
(define-category no-df-statistic :specializes abstract)
(define-category one-df-statistic :specializes abstract)
(define-category two-df-statistic :specializes abstract)

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

;; add "value of" and "statistic is"
;; early rule for p is ns

(defun make-no-df-stat-measure (statistic relation value)
  (push-debug `(,statistic ,relation ,value))
  ;;/// need to extend model to take the relation into account
  ;;  Subcategorizing the measure would work.
  ;;  Value of the relation decides among them
  (make-edge-spec
   :category (itype-of (edge-referent statistic))
   :form category::np
   :referent (bind-dli-variable
              'value (make-relational-number relation (edge-referent value))
              (edge-referent statistic))))

;; add patterns and functions for one-df and two-df measures, but might be tricky since they're more than triples


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
        (rule-label (case dfs
                      (0 'no-df-statistic)
                      (1 'one-df-statistic)
                      (2 'two-df-statistic)))
                       )
    `(define-category ,measure-name
                  :specializes ,measure-parent
                  :rule-label ,rule-label
                  :realization (:noun ,stat-names))))


;; descriptive stats
(def-stat-measure "descriptive" :stat-names ("descriptive statistic"))
(def-stat-measure "sample-size" :stat-names ("sample-size" "sample size" "n" "N") :spec-stat "descriptive") 
(def-stat-measure "mean" :stat-names ("mean" "M" "m" "average" "avg" "mu" "μ") :spec-stat "descriptive") 
(def-stat-measure "median" :stat-names ("median" "mdn") :spec-stat "descriptive") 
(def-stat-measure "standard-deviation" :stat-names ("standard-deviation" "standard deviation" "SD" "stdev" "st-dev" "S.D." "Std. Dev.") :spec-stat "descriptive") 
(def-stat-measure "standard-error" :stat-names ("standard-error" "standard error" "SE" "S.E.") :spec-stat "descriptive")


(def-stat-measure "degrees-of-freedom" :stat-names ("degrees-of-freedom" "degrees of freedom" "df" "d.f." "DF"))
(def-stat-measure "p" :stat-names ("p" "p-value"))
(def-stat-measure "p-rep" :stat-names ("p-rep" "prep" "probability of replicability")) 
(def-stat-measure "alpha" :stat-names ("alpha" "ɑ")) 
(def-stat-measure "z-score" :stat-names ("z-score" "z"))

;; comparison stats
(def-stat-measure "chi-squared" :stat-names ("chi-squared" "χ2" "χ-2" "chi squared" "chi2" "chi-2" "χ 2" "chi square"):dfs 1)
(def-stat-measure "t" :stat-names ("t" "tdiff") :dfs 1)
(def-stat-measure "F" :stat-names ("F") :dfs 2)

;; correlations
(def-stat-measure "correlation-coefficient" :stat-names ("correlation-coefficient" "correlation coefficient")) 
(def-stat-measure "r" :stat-names ("r" "Pearson's r" "Pearson correlation coefficient" "Pearson's correlation coefficient" "PCC" "Pearson product-moment correlation coefficient" "PPMCC") :spec-stat "correlation-coefficient") 
(def-stat-measure "rho" :stat-names ("rho" "Spearman's rho" "Spearman's ρ" "Spearman's rank correlation coefficient" "ρ") :spec-stat "correlation-coefficient")

(def-stat-measure "R-squared" :stat-names ("R-squared" "r-squared" "R squared" "r squared" "R2" "r2" "r-2" "𝑅̅2"))
(def-stat-measure "beta" :stat-names ("beta" "β" "B" "b")) 
(def-stat-measure "Hazard-Ratio" :stat-names ("Hazard-Ratio" "Hazard Ratio" "HR")) 
(def-stat-measure "odds-ratio" :stat-names ("odds-ratio" "odd's ratio" "odds ratio" "OR")) 

;; effect size
(def-stat-measure "effect-size" :stat-names ("effect size"))
(def-stat-measure "Cohens-d" :stat-names ("Cohens-d" "Cohen's d" "d") :spec-stat "effect-size") 
(def-stat-measure "partial-eta-square-effect-size" :stat-names ("partial-eta-square-effect-size" "partial eta-square effect size" "np2" "Zp2" "Zp 2" "partial eta-squared" "nP2" "η2p" "η-2p" "ηp2" "partial η2") :spec-stat "effect-size") 
(def-stat-measure "eta-squared" :stat-names ("eta-squared" "n2" "η2" "η-2") :spec-stat "effect-size") 
(def-stat-measure "generalized-eta-squared" :stat-names ("generalized-eta-squared" "generalized eta-squared" "ng2" "nG2" "ηg2" "ηG2") :spec-stat "effect-size")

;; confidence intervals
(def-stat-measure "confidence-interval" :stat-names ("Confidence-Interval" "Confidence Interval" "CI")) 
(def-stat-measure "95-percent-confidence-interval" :stat-names ("95-percent-confidence-interval" "95 percent confidence interval" "95% confidence" "95% Confidence" "95%CI") :spec-stat "confidence-interval") 
(def-stat-measure "upper-confidence-interval" :stat-names ("upper-confidence-interval" "upper confidence interval" "Upper Confidence Interval" "UCI") :spec-stat "confidence-interval") 
(def-stat-measure "lower-confidence-interval" :stat-names ("lower-confidence-interval" "lower confidence interval" "Lower Confidence iInterval" "LCI") :spec-stat "confidence-interval")

(def-stat-measure "Pillais-trace" :stat-names ("Pillais-trace" "Pillai's trace")) 
(def-stat-measure "Cronbachs-alpha" :stat-names ("Cronbachs-alpha" "Cronbach's alpha" "Cronbach u03b1" "Cronbach alpha" "Cronbach's ɑ" "ɑ")) ;; agreement/reliability metric 
(def-stat-measure "Bayesian-Information-Criterion" :stat-names ("Bayesian-Information-Criterion" "Bayesian Information Criterion" "BIC")) 
(def-stat-measure "Receiver-operating-characteristic" :stat-names ("Receiver-operating-characteristic" "Receiver operating characteristic" "ROC")) 
(def-stat-measure "Area-Under-Curve" :stat-names ("Area-Under-Curve" "Area Under Curve" "AUC" "A'" "a-prime" "c-statistic" "concordance statistic")) 
(def-stat-measure "Harrels-C-index" :stat-names ("Harrels-C-index" "Harrel's C-index" "Harrel's C-statistic" "Harrel's c-statistic" "concordance index")) 
(def-stat-measure "sensitivity-index-d-prime" :stat-names ("sensitivity-index-d-prime" "sensitivity index d-prime" "sensitivity index d'" "d'" "d-prime")) 
(def-stat-measure "Schoenfeld-residuals" :stat-names ("Schoenfeld-residuals" "Schoenfeld residuals")) 
(def-stat-measure "Durbin-Watson" :stat-names ("Durbin-Watson" "Durbin Watson" "DW" "D.W." "d.w." "dw")) 
(def-stat-measure "gamma" :stat-names ("gamma" "G" "γ")) 
(def-stat-measure "SEE" :stat-names ("SEE" "S.E.E." "s.e.e."))       
