;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995-2005  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "test set"
;;;   Module:  "model;sl:whos news:job events:"
;;;  version:  March 2005

;; initiated 5/28/95 as clean copy of [whos news:tests:originals]. 12/4 added
;; in 1st three from the distributed 1989 wsj since they're used in the style
;; proposal. 12/11 added the Prudential example of subject search.
;; 3/13/96 started noting statuses of these sets. 3/14/05 Added file numbers
;; for some DCI cases.

(in-package :sparser)


(defun test-function (string/filename)
  (declare (ignore string/filename))
  (break "Test-function switch hasn't been set"))

(setf (symbol-function 'test-function)
      (symbol-function 'analyze-text-from-string))



;;;--------------------------------
;;; 1st three from distributed WSJ
;;;--------------------------------

(defun vinken () ;; 891102-0193
  (test-function
"Economist Newspaper Ltd. (London) --  Pierre Vinken, 61 years old, will join 
the board as a non-executive director Nov. 29. Mr. Vinken is chairman of 
Elsevier N.V., the Dutch publishing group."))

(defun mazda () ;; 891102-0185
  (test-function
"Mazda Motor of America Inc. (Irvine, Calif.) --  Clark J. Vitulli was named 
senior vice president and general manager of this U.S. sales and marketing arm 
of Japanese auto maker Mazda Motor Corp.  In the new position he will oversee 
Mazda's U.S. sales, service, parts and marketing operations. Previously, 
Mr. Vitulli, 43 years old, was general marketing manager of Chrysler Corp.'s 
Chrysler division.  He had been a sales and marketing executive with Chrysler 
for 20 years."))

(defun nationwide ()
    (test-function
"William C.Walbrecher Jr., an executive at San Francisco-based 1st Nationwide 
Bank, was named president and chief executive officer of Citadel Holding Corp. 
and its principal operating unit, Fidelity Federal Bank.  The appointment  
takeseffect Nov. 13. He succeeds James A. Taylor, who stepped down as chairman, 
president and chief executive in March for health reasons. Edward L. Kane 
succeeded Mr. Taylor as chairman."))


(defun prudential ()   ;; this is an excerpt from WSJ213 in [1st 15 of test]
  (test-function 
"Prudential Insurance Co. of America ... Robert A. Beck, a 65-year-old former 
Prudential chairman who originally bought the brokerage firm, was named chief
executive of Prudential-Bache."))



;;;------------------
;;; original 1st set
;;;------------------

;1  (Belmoral)
;2  (Central)
;3  (Natl)
;4  (PNC)
;5  (Reed)
;6  (T/SF)
;7  (Tandy)
;8  (Russ)
;9  (Pacific)
;10 (BONE)
;11 (Hall)
;12 (Monarch)
;13 (Ryder)
;14 (Tyler)
;15 (Worlco)
;16 (National)


#|  None of them have any inference to move units up/down to 
canonical positions or to guess about missing variables.  
|#


;1  (Belmoral)
#| -- pw bug with "chief executive"
|#
(defun belmoral ()     ;; 6/14 Belmoral
  (test-function
"	BELMORAL MINES Ltd. (Toronto) -- J. Gordon Strasser, acting president 
and chief executive officer of this gold mining company, was confirmed in 
the posts, succeeding Kenneth Dalton, who retired as chairman and chief 
executive, and Clive Brown, who retired as president.  Messrs. Dalton and 
Brown remain directors.  A new chairman wasn't named. "))


;2  (Central)
#|  3/13/96
       Needs HA over 'and' to get the defNP back to the company:
        "at this electric and natural gas utility concern"
       Otherwise it's getting everything.

|#
(defun central ()      ;; 6/14 Central Illinois
  (test-function
"	CENTRAL ILLINOIS PUBLIC SERVICE Co. (Springfield, Ill.) -- Lowell A. 
Dodd, formerly vice president for division operations at this electric and 
natural gas utility concern, was named senior vice president for 
operations.  Mr. Dodd, 51 years old, succeeds Robert G. Lane, 63, who is 
retiring."))


;3  (Natl)
#|
|#
(defun natl ()        ;; 6/14 Nat'l Westminster
  (test-function
"	NATIONAL WESTMINSTER BANK PLC (London) -- Sir Ian MacLaurin, 53 
years old, chairman of Tesco PLC, and Martin Taylor, 55, a vice chairman 
of Hanson PLC, will join the board of this bank company later this year as 
non-executive directors."))


;4  (PNC)
#|
|#
(defun pnc ()         ;; 6/14 PNC
  (test-function
"	PNC FINANCIAL Corp. (Pittsburgh) -- Thomas E. Paisley III, senior vice 
president, credit policy, at the Pittsburgh National Bank unit, was named 
to the same position at this bank holding company, succeeding Bruce E. 
Robbins, who was elected president of the Central Bancorp unit."))


;5  (Reed)
#|
|#
(defun reed ()        ;; 6/14 Reed Int'l
  (test-function
"	REED INTERNATIONAL PLC (London) -- Anthony A. Greener, 50 years 
old, was named a non-executive director of this British publishing group.  
Mr. Greener is group managing director of Guinness PLC with 
responsibility for United Distillers, its world-wide spirits business."))


;6  (T/SF)
#|
|#
(defun t/sf ()         ;; 6/14 T/SF Communications
  (test-function
"	T/SF COMMUNICATIONS Corp. (Tulsa, Okla.) -- Edward B. Marks, 
chairman of the Marks Roiland Communications unit of this publishing 
company, was elected a director, increasing board membership to eight."))


;7  (Tandy)
#|
|#
(defun tandy ()       ;; 6/14 Tandycrafts
  (test-function
"	TANDYCRAFTS Inc. (Fort Worth, Texas) -- Kenneth L. Gregson, 60-
year-old president and chief executive officer of this hobbies and 
handicrafts concern, was elected to the additional position of chairman, 
effective July 1, succeeding William H. Michero, 65, who will retire June 
30, but remain a director."))


;8  (Russ)
#| 
|#
(defun russ ()        ;; 6/14Russ Togs
  (test-function
"	RUSS TOGS Inc. (New York) -- John W. Burden III, retired chairperson
of Federated/Allied Department Stores, the U.S. unit of Campeau Corp., 
was named a director of this apparel maker, filling a vacancy left by 
Robert S. Rubin's resignation, and will act as a consultant to Russ Togs."))


;9  (Pacific)
#|
|#
(defun pacific ()     ;; 6/15 Pacificorp
  (test-function
"	PACIFICORP (Portland, Oregon) -- William J. Glasglow, 43 years old, 
president and chief executive officer of Pacificorp Financial Services Inc., 
was named to the additional post of chairman, filling a vacancy at the unit 
of this electric utility concern, which also has interests in 
telecommunications and natural resources.  He also was named to 
PacificCorp's Corporate Policy Group, which consists of the senior 
executives of its various business units."))


;10 (BONE)
#| 
|#
(defun bone ()         ;; 7/17 BONE
  (test-function
"	BANK OF NEW ENGLAND Corp. (Boston) -- William E. Moeller, 48-year 
old executive vice president of the Southeast Bank unit of Southeast 
Banking Corp., Miami, was named president and chief operating officer of 
this holding company's Connecticut Bank & Trust Co. unit, effective this 
Thursday, succeeding James F. McNally, 57, who announced his retirement 
in May, pending the naming of a successor."))


;11 (Hall)
#| 
|#
(defun hall ()         ;; 7/17 Hall &Co
  (test-function
"	FRANK B. HALL & Co. (Briarcliff Manor, N.Y.) -- Joseph L. Lombardo was 
named executive vice president, a new post, at this insurer's U.S. 
brokerage operation.  Mr. Lombardo, 51 years old, was previously senior 
vice president and marketing director at Alexander & Alexander Services 
Inc., a New York insurance broker."))


;12 (Monarch)
#| 
|#
(defun monarch ()      ;; 7/17 Monarch
  (test-function
"	MONARCH CAPITAL Corp. (Springfield, Mass.) -- Roger Servison, 
former Fidelity Investments senior vice president and managing director, 
was named president and a member of the board, Mr. Servison, 45 years 
old, succeeds Gordon N. Oakes as president.  Mr. Oakes remains chairman 
and chief executive officer.  Mr. Servison, a University of Iowa graduate, 
earned an M.B.A. from Harvard University in 1972.  He joined Fidelity in 
1976 and became senior vice president of Fidelity Brokerage Services in 
1980."))


;13 (Ryder)
#| 
|#
(defun ryder ()        ;; 7/17- Ryder
  (test-function
"	RYDER SYSTEM Inc. (Miami) -- R. Frank Leftwich was appointed 
president of the Aviation Leasing & Services division of this 
transportation services concern.  Mr. Leftwich, 54 years old, had been 
group vice president of airline engine and distribution services at Aviall, 
a Ryder subsidiary.  He succeeds Robert G. Lambert, who is now Ryder 
System's senior executive vice president for aviation."))


;14 (Tyler)
#|  
|#
(defun tyler ()        ;; 7/17 Tyler
  (test-function
"	TYLER Corp. (Dallas) -- James E. Russell and Richard W. Margerison 
were named to the board of this pipe and fittings manufacturer.  Mr. 
Russell is president and chief executive officer of Tyler Pipe Industries, 
the operating company of Tyler Corp.  Mr. Margerison is executive vice 
president of the parent company.  The two new directors bring the number 
of board members to eight.  Tyler had reduced its board to six members 
from 12 following the sale of this Atlas Powder Co. in May."))



;15 (Worlco)
#| 
|#
(defun worlco ()        ;; 7/17 Worlco
  (test-function
"	WORLCO DATA SYSTEMS Inc. (Valley Forge, Pa.) -- James T. Kelsey, 
Edward A. Rofi and Joseph F. Loughran Jr. were elected chairman, vice 
president and president, respectively, of this direct marketing and 
publishing concern.  Mr. Kelsey, 30 years old, formerly a Worlco director, 
is a partner of Grumman Hill Investments II L.P., which has just increased 
its investment in Worlco.  Mr. Rofi, 52, is the former chief executive 
officer and president of Worlco.  Mr. Loughran, 48, remains chief operating 
officer and succeeds Mr. Rofi as president."))


;16 (National)
#| 
|#
(defun national ()      ;; 7/18 National
  (test-function
"	NATIONAL CONVENIENCE STORES Inc. (Houston) -- James M. Leonard, 
formerly senior vice president, central region, at Circle K Corp., was 
named senior vice president, stores, at this retail convenience-stores 
operator, filling a vacancy."))
