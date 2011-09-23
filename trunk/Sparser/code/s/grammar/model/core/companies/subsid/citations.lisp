;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "citations"
;;;   Module:  "model;core:names:companies"
;;;  version:  May 1991      (v1.8.5)

(in-package :CTI-source)


;;;-----------------------------------------------
;;; references to companies that are subsidiaries
;;;-----------------------------------------------

(c "this tobacco manufacturing unit of Brooke Group Ltd."      "feb0;" 57
   :tts ( thisSubsid of-company ))

(c "this media company's Ziff-Davis Publishing unit."          "feb0;"  72
   :tts ( company-possessive subsidiary-co ))

(c "Simon & Schuster Inc., a unit of Paramount Communications Inc."   "feb0;" 57
   :tts ( company comma-subsidiary ))

(c "Visa U.S.A. Inc., a major unit"                            "feb0;"  2
   :tts ( company comma-subsidiary-phrase ))

Northern Telecom Canada Ltd. and Northern Telecom Inc.,
          the U.S. unit  feb2;211
