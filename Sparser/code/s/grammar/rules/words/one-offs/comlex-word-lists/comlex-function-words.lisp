;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;; Extracted from Comlex 3.1  7/30/10 ddm

(in-package :sparser)

;; 621 words (symbols)

(defvar *comlex-function-words-list*
  '( ;; *comlex-scopes* 
    both either neither

    ;; *comlex-determiners*
    a an another any each either every her his its my neither no our some
 that the their these this those your

    ;; *comlex-quantifiers*)
     all both enough few least less lesser many more most one several some
 such

    ;; *comlex-advparts*
    about across along apart around aside away back by down forth forward
 in off on open out over through together up

    ;; *comlex-auxilaries*
    |'d| |'ll| can |can't| cannot could |couldn't| did |didn't| do does
 |doesn't| |don't| may might must |need (negated)| |needn't|
 |ought not to| |ought to| shall should |shouldn't| |used to| will
 |won't| would |wouldn't|

    ;; *comlex-non-words* ;; POS is WORD
    ! $ % |(| |)| |,| - \. |:| |;| ? [ ] how what whatever whatsoever
 whether which whichever who whom whose why { }

    ;; *comlex-pronouns*
    I anybody anyone anything |each other| everybody everyone everything
 he her hers herself him himself his it itself me mine myself no-one
 nobody none nothing one oneself ours ourselves she so somebody someone
 something theirs them themselves they us we whoever whomever you yours
 yourself yourselves

    ;; *comlex-coordinate-conjunctions*
    and but nor or tha

    ;; *comlex-subodinate-conjunctions*
    |according as| afore after albeit although as |as far as| |as if|
 |as soon as| |as though| because before besides by during
 |except that| if in |inasmuch as| lest like |on grounds that|
 |on the grounds that| once only otherwise |prior to| provided
 |provided that| providing |providing that| since so |so that|
 |such as| |such that| though till unless until upon when whenever
 where whereas wherever while with without

    ;; *comlex-cardinals*
    billion eight eighteen eighty eighty-eight eighty-five eighty-four
 eighty-nine eighty-one eighty-seven eighty-six eighty-three eighty-two
 eleven fifteen fifty fifty-eight fifty-five fifty-four fifty-nine
 fifty-one fifty-seven fifty-six fifty-three fifty-two five forty
 forty-eight forty-five forty-four forty-nine forty-one forty-seven
 forty-six forty-three forty-two four fourteen hundred million nine
 nineteen ninety ninety-eight ninety-five ninety-four ninety-nine
 ninety-one ninety-seven ninety-six ninety-three ninety-two one seven
 seventeen seventy seventy-eight seventy-five seventy-four seventy-nine
 seventy-one seventy-seven seventy-six seventy-three seventy-two six
 sixteen sixty sixty-eight sixty-five sixty-four sixty-nine sixty-one
 sixty-seven sixty-six sixty-three sixty-two ten thirteen thirty
 thirty-eight thirty-five thirty-four thirty-nine thirty-one
 thirty-seven thirty-six thirty-three thirty-two thousand three
 trillion twelve twenty twenty-eight twenty-five twenty-four
 twenty-nine twenty-one twenty-seven twenty-six twenty-three twenty-two
 two zero

    ;; *comlex-ordinals*
    eighteenth eighth eightieth eighty-eighth eighty-fifth eighty-first
 eighty-fourth eighty-ninth eighty-second eighty-seventh eighty-sixth
 eighty-third eleventh fifteenth fifth fiftieth fifty-eighth
 fifty-fifth fifty-first fifty-fourth fifty-ninth fifty-second
 fifty-seventh fifty-sixth fifty-third first fortieth forty-eighth
 forty-fifth forty-first forty-fourth forty-ninth forty-second
 forty-seventh forty-sixth forty-third fourteenth fourth nineteenth
 ninetieth ninety-eighth ninety-fifth ninety-first ninety-fourth
 ninety-ninth ninety-second ninety-seventh ninety-sixth ninety-third
 ninth second seventeenth seventh seventieth seventy-eighth
 seventy-fifth seventy-first seventy-fourth seventy-ninth
 seventy-second seventy-seventh seventy-sixth seventy-third sixteenth
 sixth sixtieth sixty-eighth sixty-fifth sixty-first sixty-fourth
 sixty-ninth sixty-second sixty-seventh sixty-sixth sixty-third tenth
 third thirteenth thirtieth thirty-eighth thirty-fifth thirty-first
 thirty-fourth thirty-ninth thirty-second thirty-seventh thirty-sixth
 thirty-third twelfth twentieth twenty-eighth twenty-fifth twenty-first
 twenty-fourth twenty-ninth twenty-second twenty-seventh twenty-sixth
 twenty-third

    ;; *comlex-titles*
    Cpl. Dr. Fr. Fra Gen. Gov. Maj. Miss Mr. Mrs. Ms. Pres. Prof. Pvt.
 Rep. Rev. Sen. Sgt. Supt.

    ;; *comlex-prepositions*
    abaft abeam aboard about above |abreast of| |according to| across
 |across from| afore after against |ahead of| along |along with| amid
 amidst among amongst |apart from| around |as a result of| |as far as|
 |as for| |as from| |as of| |as per| |as soon as| |as to| |aside from|
 at |at the expense of| |at the hands of| |at variance with| atop
 |away from| bar barring |because of| before behind below beneath
 beside besides between beyond but |but for| by |by dint of|
 |by means of| |by virtue of| |by way of| |close to| |contrary to|
 despite |devoid of| down |due to| during except |except for|
 |exclusive of| following for |for sake of| |for the sake of|
 |for want of| from |from want of| in |in  process of|
 |in accordance with| |in addition to| |in aid of| |in back of|
 |in case of| |in charge of| |in common with| |in comparison with|
 |in compliance with| |in conformity with| |in connection with|
 |in consequence of| |in contact with| |in exchange for| |in face of|
 |in favor of| |in front of| |in lieu of| |in light of| |in line with|
 |in need of| |in place of| |in quest of| |in reference to|
 |in regard to| |in relation to| |in respect of| |in respect to|
 |in return for| |in search of| |in spite of| |in terms of|
 |in the face of| |in the light of| |in the process of| |in view of|
 inside |inside of| |instead of| into |irrespective of| like minus near
 |near to| nearer |nearer to| |next to| notwithstanding of off |off of|
 on |on account of| |on behalf of| |on grounds of| |on pain of|
 |on the grounds of| |on the matter of| |on the part of|
 |on the strength of| |on top of| onto out |out of| outside
 |outside of| over |owing to| past pending per plus |preliminary to|
 |preparatory to| |previous to| |prior to| |pursuant to|
 |regardless of| |short of| since |subsequent to| |such as| |thanks to|
 through throughout till to |together with| toward towards under unlike
 until unto up |up against| |up to| upon |upwards of| versus via
 |void of| vs with |with reference to| |with regard to|
 |with respect to| |with the exception of| within without worth
    ))

(defvar *is-a-function-word-in-comlex* (make-hash-table))

(defun populate-comlex-function-words ()
  (loop for s in *comlex-function-words-list*
       do (setf (gethash s *is-a-function-word-in-comlex*) t)))
