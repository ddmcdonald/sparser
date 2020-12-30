(in-package :sparser)

(define-prep-record "as"
  :left-string "recognized"
  :right-string "a pandemic"
  :head-type 'binding
  :pobj-type 'pandemic)

(define-prep-record "at"
  :left-string "screening"
  :right-string "airports"
  :head-type 'screen
  :pobj-type 'airport)

(define-prep-record "between"
  :left-string "time"
  :right-string "exposure and symptom onset"
  :head-type 'time
  :pobj-type 'onset)

(define-prep-record "by"
  :left-string "caused"
  :right-string "severe acute respiratory syndrome coronavirus 2 (SARS-CoV-2)"
  :head-type 'cause
  :pobj-type 'coronavirus)

(define-prep-record "by"
  :left-string "pandemic"
  :right-string "the World Health Organization (WHO)"
  :head-type 'pandemic
  :pobj-type 'organization-auto)

(define-prep-record "for"
  :left-string "self-isolation"
  :right-string "people who suspect"
  :head-type 'hyphenated-pair
  :pobj-type 'people)

(define-prep-record "from"
  :left-string "range"
  :right-string "two to fourteen days"
  :head-type 'bio-range
  :pobj-type 'time-unit)

(define-prep-record "in"
  :left-string "Hubei, China,"
  :right-string "December 2019"
  :head-type 'province
  :pobj-type 'month-of-the-year)

(define-prep-record "of"
  :left-string "cancellation"
  :right-string "sporting"
  :head-type 'cancellation
  :pobj-type 'sport)

(define-prep-record "of"
  :left-string "cases"
  :right-string "COVID-19"
  :head-type 'cases-pathogen
  :pobj-type 'covid-19)

(define-prep-record "of"
  :left-string "fears"
  :right-string "supply shortages which have spurred"
  :head-type 'fear
  :pobj-type 'supply)

(define-prep-record "of"
  :left-string "pandemic"
  :right-string "coronavirus disease 2019 (COVID-19)"
  :head-type 'pandemic
  :pobj-type 'year)

(define-prep-record "of"
  :left-string "quarantine"
  :right-string "Hubei"
  :head-type 'quarantine
  :pobj-type 'province)

(define-prep-record "on"
  :left-string "Organization (WHO)"
  :right-string "11 March 2020"
  :head-type 'organization-auto
  :pobj-type 'month-of-the-year)

(define-prep-record "with"
  :left-string "regions"
  :right-string "community transmission"
  :head-type 'region-auto
  :pobj-type 'transmission)

