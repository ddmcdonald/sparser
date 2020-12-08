;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2020 SIFT LLC. All Rights Reserved
;;;
;;;    File: "statistical-tests"
;;;  Module: "grammar/model/sl/score-stats/
;;; version: September 2020

;;; started 9/2020 to gather tests and their metrics for reading
;;; articles for the SCORE project and other articles with statistics,
;;; especially in the behavioral sciences

(in-package :sparser)

;; in an example like "t(45) = -1.0, p = 0.0032, df = 45"
;; this overall is a t-test (which also has realization "t-test") 
;; "t(45) = -1.0" is a t-measure which is a stat-measure
;; a t-measure has a statistic ("t"), a value (-1.0), and an optional df-measure, which is itself a stat-measure  with value 45 (df is optional because you can have a t-test reported without the df)
;; Fs(1,75) <1.5, NS


(define-category data-method :specializes activity-with-a-purpose ;; same parent as bio-method
                 )

(define-category stat-test :specializes data-method
                 :binds (
                         ;(null-hypothesis hypothesis) ;; have hypothesis ?
                         (p-value stat-measure)
                         (data-set ) ;;represented how??
                         ) 
                 )

(define-category stat-comparison-test :specializes stat-test
                 :binds ((ind-var categorical-stat-var) ;; or set of vars for ANOVA
                         )
                 )

(define-category chi-squared-test :specializes stat-comparison-test
                 :binds ( 
                         (dep-var categorical-stat-var)
                         (chi-squared stat-measure)
                         (df stat-measure)
                         (effect-size effect-size-measure) ;; optional d = 
                         )
                 :realization (:noun ("chi-squared test"))
                 )

(define-category t-test :specializes stat-comparison-test ;; add parametric somehow?
                 :binds (
                         (dep-var continuous-stat-var)
                         (t-measure stat-measure) ;; t=num
                         (df stat-measure) ;; optional -- may be in parens t(df) = val
                         (effect-size effect-size-measure) ;; optional d = 
                         )
                 :realization (:noun ("t-test" "ttest"))
                 )
;; subtypes of t-test: paired, one-sample, independent/unpaired 

#|(define-category t-statistic :specializes statistic
                 ;; maybe add binds df?
                 :realization (:noun ("t" "tdiff"))
                 )

(define-category t-stat-measure :specializes stat-measure
                 :binds ((stat  t-statistic))
                 ;; maybe deal with df here for cases where it's in t(df) = value
                 )
|#
(define-category f-test :specializes stat-comparison-test ;; add parametric somehow?
                 :binds ((ind-var ) ;; 1 or more categorical stats
                         (dep-var continuous-stat-var)
                         (f-measure stat-measure) ;; F=num
                         (df stat-measure) ;; optional -- may be in parens F(df,df) = val
                         (effect-size effect-size-measure) ;; optional d = 
                         )
                 :realization (:noun ("F-test" "Ftest"))
                 )
#|
(define-category f-statistic :specializes statistic
                 ;; maybe add binds df?
                 :realization (:noun "F"))

(define-category f-stat-measure :specializes stat-measure
                 :binds ((stat  f-statistic))
                 ;; maybe deal with df here for cases where it's in t(df) = value
                 )
|#
(define-category ANOVA :specializes f-test ;; add parametric somehow?
                 :realization (:noun ("ANOVA" "Analysis of Variance"))
                 )
(define-category rANOVA
    :specializes f-test
    :realization
    (:noun ("rANOVA" "repeated measures ANOVA" "repeated measures
                 Analysis of Variance" "repeated-measures ANOVA"
                 "repeated-measures Analysis of Variance")) )
;; also one-way ANOVA, etc

(define-category MANOVA :specializes f-test ;; add parametric somehow?
                 :binds () ;; multiple dependent vars
                 :realization (:noun ("MANOVA" "Multivariate Analysis of Variance"))
                 )

(define-category regression :specializes stat-test ;; add parametric somehow?
                 :binds ((ind-var continuous-stat-var) ;; 1 or more stats
                         (dep-var ) ;; 1 or more
                         (r2-measure stat-measure) ;; r2
                         (df stat-measure) ;; optional -- may be in parens F(df,df) = val
                         )
                 :realization (:noun ("regression"))
                 )

(define-category logistic-regression :specializes regression ;; add parametric somehow?
                 :binds ((dep-var binary-stat-var) ;; 
                         )
                 :realization (:noun ("logistic regression" "logistic-regression"
                                                             "logit regression"))
                 )

(define-category linear-regression :specializes regression ;; add parametric somehow?
                 :binds ((dep-var continuous-stat-var) ;; 1 or more
                         )
                 :realization (:noun ("linear regression" "linear-regression"))
                 )

(define-category simple-linear-regression :specializes linear-regression ;; add parametric somehow?
                 :binds (
                         ;; only one independent variable
                         )
                 :realization (:noun ("linear regression" "linear-regression"))
                 )
(define-category multiple-linear-regression :specializes linear-regression ;; add parametric somehow?
                 :binds (
                         ;; more than one independent variable
                         )
                 :realization (:noun ("multiple regression" "multiple linear regression"))
                 )

(define-category correlation :specializes stat-test
                 :binds ((ind-var continuous-stat-var) ;; 1 or more stats
                         (dep-var continuous-stat-var) ;; 1 or more
                         (r-measure stat-measure) ;; r
                         (df stat-measure) ;; optional -- may be in parens r(df) = val
                         )
                 :realization (:verb "correlate" ;; though can sometimes be a noun
                                :noun ("correlation"))
                 )

(define-category pearson-correlation :specializes correlation ;; add parametric somehow?
              :binds ((ind-var continuous-stat-var)
                         (dep-var continuous-stat-var) 
                         (r-measure stat-measure) ;; r
                         )
                 :realization (:noun ("pearson correlation" "bivariate correlation"))
                 )

(define-category spearman-correlation :specializes correlation ;; add non-parametric somehow?
              :binds ((ind-var (:or ordinal-stat-var continuous-stat-var)) 
                         (dep-var (:or ordinal-stat-var continuous-stat-var))
                         (rho-measure stat-measure) ;; rho
                         )
                 :realization (:noun ("spearman correlation" "Spearman's rank correlation"))
                 )
                 

#|
"Table 2 illustrates the results of the multiple linear regression analysis, which indicatethat there is a collective significant effect between conscientiousness, neuroticism, risk perception, personal hygiene practices, and social distancing practices. The model explains 29.2% of the variance (F[7, 391] = 23.01; p < .001; R2 = .292; d = .41). The individual predictors were examined further and these indicated that conscientiousness (b = .112; SE = .011; p = .023), neuroticism (b = .111; SE = .010; p = .018), risk perception (b = .145; SE = .035; p = .001), and6personal hygiene practices (b = .451; SE = .044; p < .001) were significant predictors in the model.[Insert Table 2 about here]"
|#
