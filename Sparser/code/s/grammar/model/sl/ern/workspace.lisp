;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1996  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "workspace"
;;;   Module:  "model;sl:ERN:"
;;;  Version:  January 1995

;; initiated 1/8/96

(in-package :sparser)

#|
;;; Excerpts from articles


#|
<HTML>  
<HEAD>  

<TITLE>Business FACTory: Echlin's first-quarter 
earnings were 54 cents per share</TITLE>  

</HEAD>  
<body background=
"/fact-images/backgrnd.gif">  
<TABLE WIDTH=100%><TR><TD ROWSPAN=2><
IMG SRC="/fact-images/document.gif" border=0></TD>  
					<TD ALIGN=
RIGHT VALIGN=TOP><A HREF="/cgi-bin/factory.exe/front"><IMG SRC="/fact-
images/smallogo.gif" border=0></A></TD></TR>  
<TR><TD ALIGN=RIGHT 
VALIGN=BOTTOM><A HREF="http://www.postnet.com">St. Louis PostNet</A><
BR>Wednesday, December 27, 1995</TD></TR>  
</TABLE>  
<HR>  
<h3>  
<
A HREF="fact?144.17865">Echlin</A>'s first-quarter earnings were 54 
cents per share  
</h3>  
<EM>  
BRANFORD, CONN. (BUSINESS WIRE) Dec. 
18, 1995 via the Business FACTory -</EM>  



<A HREF="fact?144.17865">Echlin</A> Inc. (NYSE:ECH) today reported 
financial results for the first quarter ended November 30, 1995.  

Earnings per share were 54 
cents, equal to last year's first-quarter earnings.  

Announcement of 
the results was made by Echlin Chairman and Chief Executive Officer 
Frederick J. Mancheski.  
<p>  


Net sales for the first three months 
of fiscal year 1996 totaled $695.0 million, 16 percent greater than 
last year's $600.6 million. 

Most of the gain was from acquired 
businesses, primarily Preferred Technical Group (PTG), which Echlin 
bought in December 1994.  PTG manufacturers coupled hose assemblies 
for automotive brake, power steering, heating and air conditioning 
systems.  
<p>  
Excluding acquisitions, unit sales of comparable 
operations (those part of Echlin for at least a year) dropped one 
percent from the first quarter a year ago.  While unit volume was up 
for our foreign businesses, it was down for our U.S.  businesses.  The
 significant decline in new builds of heavy duty trucks and trailers, 
and the fact that our customers have been trimming inventories 
following the mild winter of 1994/95, contributed to the slowdown.  
<
p>  


Net income in the first quarter was $32.3 million, up only 
slightly from last year's $31.8 million.  

Echlin's profit margins fell
 in the quarter as we cut production levels to better control our 
inventories.  As a result, overhead costs were not fully absorbed. 
Higher interest expense and a greater income tax rate this year, both 
largely due to the impact of the PTG acquisition, also negatively 
affected profits.  
<p>  
"The sales slowdown bottomed in September, 
and recovered a bit in October and November.  Our outlook is 
optimistic as we move into a more typical winter period,"  Mr.  
Mancheski explained.  "In overseas markets, where Echlin has about a 
quarter of its business, we continue to see year-over-year sales 
increases.  Our operations, particularly in Europe, are expanding 
nicely as we penetrate new geographic areas, and add more lines to our
 product offering."  
<p>  
Over the last three months, Echlin has 
announced two pending acquisitions and major new pieces of business 
set to roll out later this fiscal year.  "With higher sales, improved 
operations and profit contributions of acquired businesses, we're 
comfortable 

with fiscal 1996 earnings' estimates of about $3.00 per 
share - a gain of approximately 15 percent,"  

Mr.  Mancheski stated.  

<p>  
Comparative, unaudited results for the first quarter of fiscal 
years 1996 and 1995 are: -0-  
<p>  
<HR>  
<pre>  

                                3 months ended November 30,  

                                    1995             1994  
  
 Net 
sales                    $695,019,000     $600,615,000  
 Net income 
after tax          $32,280,000      $31,796,000  
 Earnings per share
                  $0.54            $0.54  
 Average shares outstanding
     59,654,000       59,321,000  
  
  
</pre>  
<table>  
<tr valign
=top><td><EM>Contact: </EM></td>  
<td>Paul Ryder<br>  
Director<br>  

Investor Relations<br>  
(203) 481-5751<br>  
</td>  
</tr></table>  

<HR>Copyright &copy 1995 <A href="kfp">Knowledge Factory Partners, L.
L.C.</A>  
  
</HTML>  

|#

XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

(defun value-line ()
  (p "Value Line reports second quarter earnings.

<A HREF=\"fact?144.23298\">Value Line</A>,Inc. (NASDAQ -VALU) reported 
net earnings for the six months ended Oct. 31, 1995 of $18,474,000 or $1.85 per 
share compared with net earnings of $10,389,000 or $1.04 per share for
 fiscal 1995, a $8,085,000 or 78% increase. 

Earnings for the second quarter ended Oct. 31, 1995, of $8,250,000, 
or $.83 a share, compared with $6,961,000 or $.70 per share, 
for the corresponding quarter of the previous year.  

The net income for both the second quarter and the
first half of fiscal 1996 establish new highs for the company's 
earnings during those periods. 

During the first six months of fiscal 
1996, operating income of $17,683,000 increased 35% and investment 
income of $12,601,000 increased 207% from the prior year's levels. 

In announcing these results, Jean Bernhard Buttner, Value Line's chairman 
and chief executive officer commented, \"We are pleased that net 
income, operating income and investment income all increased 
substantially during the first half of fiscal 1996.  

The company also 
reached another milestone, reporting record high earnings for both the
 second quarter and first six months of the current fiscal year. 

Assets under management in our mutual funds increased 13.3% while 
assets in the firm's managed accounts increased 13.5% as of Oct. 31, 
1995 compared to Oct. 31, 1994.  

New orders for the Value Line 
Investment Survey for the first six months of fiscal 1996 are running 
over 45% ahead of the same period last year.\" "))



------------------------
Financial report #2
   company: Value Line
   datum: investment income - $12601000
   value: $12601000
   percentage-changed: 207%
   direction-of-change: up


------------------------
Financial report #1
   company: Line
   datum: operating income - $17683000
   value: $17683000
   percentage-changed: 35%
   direction-of-change: up


XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX



#|
<HTML>  
<HEAD>  

<TITLE>Business FACTory: ORANGE-CO, INC. REPORTS 
ANNUAL AND FOURTH QUARTER RESULTS</TITLE>  


</HEAD>  
<body background
="/fact-images/backgrnd.gif">  
<TABLE WIDTH=100%><TR><TD ROWSPAN=2><
IMG SRC="/fact-images/document.gif" border=0></TD>  
					<TD ALIGN=
RIGHT VALIGN=TOP><A HREF="/cgi-bin/factory.exe/front"><IMG SRC="/fact-
images/smallogo.gif" border=0></A></TD></TR>  
<TR><TD ALIGN=RIGHT 
VALIGN=BOTTOM><A HREF="http://www.postnet.com">St. Louis PostNet</A><
BR>Wednesday, December 27, 1995</TD></TR>  
</TABLE>  
<HR>  
<h3>  

ORANGE-CO, INC. REPORTS ANNUAL AND FOURTH QUARTER RESULTS  
</h3>  
<
EM>  
BARTOW, Fla., Dec. 11 /PRNewswire/ via the Business FACTory -</
EM>  


;; 1/9 12.7 -- comma-year, lowercase 'co'
Orange-co, Inc. (NYSE: OJ) announced today results for its year 
ended September 30, 1995.  

;; 1/9 1.0 -- ok (no comparative)
Net income was $9,135,000 or $.89 per share, up from $3,345,000 
or $.32 per share reported for the prior year.  

;; 1/9 1.1 -- misses 'or <%>'
Sales increased to $111,325,000 or 45% compared to $76,756,000 
reported for fiscal 1994.  


;; 1/9 1.2 -- vp for "reported net income" strands 'of-money'
;;            possible false positive if comparative isn't grounded
;;              to its actual time-period => have to do "the prior year"
;;            The fiscal-year doesn't get connected to the quarter, and
;;              there's some confusion in the passing up of values
;;              since the rule combining fd with fiscal-years construct
;;              new time-anchored-fd's rather than augmenting the
;;              ones that (might be) there.
;;
<p>  The fourth quarter results of fiscal 1995
 were profitable with a reported net income of $2,005,000 or $.19
 per share compared to a net income of $745,000 or $.07 per share in 
the fourth quarter of the prior year.  

;; 1/9 1.7 -- ok except for 'fiscal-year' passing-up confusion
;;             noted above
;;
Fourth quarter sales in fiscal 1995 
were $24.4 million, up from $19.6 million in the fourth quarter 
of fiscal 1994.  


<p>  
Commenting on the 1995 results, Ben Hill 
Griffin, III, Chairman of the Board and Chief Executive Officer, said:
 "Our 1995 results have been very rewarding and confirms our belief in
 a bright future for Orange-co. We are confident that we are on the 
right track for continued growth and enhanced shareholder value as 
demonstrated by the recently announced dividend."  
<p>  
<HR>  
<pre>
  
                     ORANGE-CO, INC. AND SUBSIDIARIES  

                  CONSOLIDATED STATEMENTS OF OPERATIONS  
          
FOR THE YEARS ENDED SEPTEMBER 30, 1995, 1994 AND 1993  

                   (in thousands except per share data)  
  

                                              1995      1994      1993
  
     Sales                                $111,325   $76,756   $71,
938  
     Costs of sales                         91,211    65,646    
62,279  
       Gross Profit                         20,114    11,110
     9,659  
  
     Other costs and expenses, net:  
       Selling, 
general and administrative  (4,597)   (4,051)   (3,995)  
       Gain 
(loss) on disposition of property  
         and equipment and 
property held  
         for disposition                     1,026
       484       142  
      Other                                   (
147)       36      (227)  
      Interest
                              (1,620)   (1,693)   (1,820)  
      
Income from continuing operations  
        before income tax
                   14,776     5,886     3,759  
      Income tax 
expense                     5,641     2,493     1,539  
      Net 
income from continuing operations  9,135     3,393     2,220  
  

      Discontinued operations:  
        Loss from operations of 
discontinued  
          Petroleum Division, net of applicable  

          income tax (benefit) of $(71)  
          and $(13)
                            ---     (116)       (22)  
      Gain (
loss) on disposal of Petroleum  
        Division net of 1994 tax (
benefit)  
        of $(134)                              ---       68
       (513)  
      Loss from discontinued operations        ---
      (48)      (535)  
      Net income before extraordinary item   9
,135    3,345      1,685  
  
     Extraordinary (loss):  
       
Early extinguishment of debt (loss net  
         of applicable tax 
benefit of $366)    ---      ---       (597)  
  
     Net Income
                             $9,135   $3,345     $1,088  
  
     Net 
income per common and common equivalent shares:  
  
     Continuing 
operations                    $.89     $.33       $.22  
     
Discontinued operations                  $---    $(.01)     $(.05)  

     Extraordinary (loss)                     $---    $---       $(.06
)  
     Net Income                               $.89     $.32       
$.11  
  
     Average number of common and common  
       equivalent
 shares outstanding        10,298   10,299     10,293  
  
  
</pre>  

<HR>Copyright &copy 1995 <A href="kfp">Knowledge Factory Partners, L.
L.C.</A>  
  
</HTML>  
 |#


------------------------
Financial report #1
   company: ORANGE-CO, INC.
   datum: sales
   value: $111325000
   direction-of-change: up




XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX


///////////// Can't get through this one w/o a fix to how the
 egdge view does its calculations since it's tripping over dead edges.

 Or the <pre> stuff might cut down on the number of edges and
 avoid the problem.


<HTML>  
<HEAD>  
<TITLE>Business FACTory: Outlook Group Corp. 
reports second quarter results</TITLE>  
</HEAD>  
<body background="/
fact-images/backgrnd.gif">  
<TABLE WIDTH=100%><TR><TD ROWSPAN=2><IMG 
SRC="/fact-images/document.gif" border=0></TD>  
					<TD ALIGN=RIGHT 
VALIGN=TOP><A HREF="/cgi-bin/factory.exe/front"><IMG SRC="/fact-images
/smallogo.gif" border=0></A></TD></TR>  
<TR><TD ALIGN=RIGHT VALIGN=
BOTTOM><A HREF="http://www.postnet.com">St. Louis PostNet</A><BR>
Wednesday, December 27, 1995</TD></TR>  
</TABLE>  
<HR>  
<h3>  

Outlook Group Corp. reports second quarter results  
</h3>  
<EM>  

MENASHA, WIS. (BUSINESS WIRE) Dec. 18, 1995 via the Business FACTory -
</EM>  


<A HREF="fact?144.47010">Outlook Group</A> Corp. (Nasdaq/NMS: 
OUTL) today reported results for the second quarter ended November 30,
 1995.  


<p>  


Net sales for the second quarter of fiscal 1996 were $30,419,000, 
compared to net sales of $30,472,000 for the second 
quarter of the prior year.  

The company reported a loss of $321,000 or
 $0.07 per share for the second quarter, compared to net earnings of 
$1,307,000 or $0.27 per share for the same period in the prior year.

  

<p>  


For the first half of fiscal 1996, net sales were $57,074,000, 
compared with sales of $61,463,000 for the same period in fiscal 1995.


  The company reported a loss of $435,000 or $0.09 per share for the 
first half of fiscal 1996, compared with net earnings of $2,611,000 or
 $0.53 per share at the same time last year.  


<p>  
"The 
disappointing second quarter results were due to three primary factors
. The graphic services division reported reduced sales and profits, 
primarily reflecting the continuing softness of the sports and 
collectible card market. In addition, low sales activity and operating
 inefficiencies at our flexible packaging operation caused significant
 losses at this subsidiary," said David L. Erdmann, chairman and 
president of Outlook Group Corp.  Erdmann said the second quarter 
results were also affected by continuing start-up costs at the company
's Barrier Films subsidiary.  The company's food and label operations 
contributed sales growth in the quarter but profitability declined 
from last year, he said.  
<p>  
"We have implemented significant 
changes at our flexible packaging subsidiary to correct the operating 
inefficiencies, and are beginning to see more sales and an improved 
bottom line," Erdmann said.  
<p>  
"Returning Outlook Group to 
profitability with growth is our first priority. The actions we have 
taken are directed at achieving this objective over the long term.  We
 anticipate improved performance in the second half of our fiscal year
 in our food, packaging, and label subsidiaries.  The graphics 
division, although having good long term prospects in paperboard 
packaging, fulfillment, and distribution, will continue to be impacted
 by the health of the collectible trading card market," Erdmann said. 
 
<p>  
Outlook Group Corp. is a graphic services and food products 
packaging company which offers an array of related services including 
specialty printing, converting, food products production, packaging 
and distribution. -0-  
<p>


XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

;; ditto

<HTML>  
<HEAD>  
<TITLE>Business FACTory: J2 COMMUNICATIONS (
NATIONAL LAMPOON) ANNOUNCES PROFIT FOR FIRST QUARTER, FISCAL '96</
TITLE>  
</HEAD>  
<body background="/fact-images/backgrnd.gif">  
<
TABLE WIDTH=100%><TR><TD ROWSPAN=2><IMG SRC="/fact-images/document.gif
" border=0></TD>  
					<TD ALIGN=RIGHT VALIGN=TOP><A HREF="/cgi-bin/
factory.exe/front"><IMG SRC="/fact-images/smallogo.gif" border=0></A><
/TD></TR>  
<TR><TD ALIGN=RIGHT VALIGN=BOTTOM><A HREF="http://www.
postnet.com">St. Louis PostNet</A><BR>Wednesday, December 27, 1995</TD
></TR>  
</TABLE>  
<HR>  
<h3>  
J2 COMMUNICATIONS (NATIONAL LAMPOON)
 ANNOUNCES PROFIT FOR FIRST QUARTER, FISCAL '96  
</h3>  
<EM>  
LOS 
ANGELES, Dec. 11 /PRNewswire/ via the Business FACTory -</EM>  


J2 Communications (Nasdaq: JTWO), parent Company of National Lampoon, 
today reported net income of $44,000 ($.01 per share) for the quarter 
ended October 31, 1995.  


<p>  


For the comparable period in 1994, net
 income was $70,000 ($.02 per share). 

Revenues for the period totaled 
$294,000 versus $319,000 for the same period in 1994.  

Revenues from 
filmed entertainment, home video and National Lampoon Magazine all 
improved slightly while royalty income decreased.  


<p>  
Commenting 
on the results, J2 President and CEO James P. Jimirro stated, "We are 
pleased to have turned in another profitable quarter and we are 
excited about National Lampoon's increasing range of activities. Best 
of all, we continue to believe that our long term goals for the comedy
 franchise will be met."  
<p>  
"National Lampoon's Favorite Deadly 
Sins," starring Joe Montegne, Denis Leary and Andrew Clay, debuted to 
rave reviews on Showtime in November. Scheduled for a spring release 
to the home video market on the prestigious Republic Pictures label, 
it is the second of seven original National Lampoon motion pictures to
 be produced and released by Showtime.  
<p>  
Besides filmed 
entertainment, National Lampoon is active in television, interactive 
entertainment, audio, merchandise and book and magazine publication.  

<p>  
<table>  
<tr valign=top><td><EM>Contact: </EM></td>  
<td>
Duncan Murray of J2 Communications, 310-474-5252<br>  
</td>  
</tr></
table>  
<HR>Copyright &copy 1995 <A href="kfp">Knowledge Factory 
Partners, L.L.C.</A>  
  
</HTML>  



XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

;; ditto

<HTML>  
<HEAD>  
<TITLE>Business FACTory: ROPER INDUSTRIES, INC., 
ANNOUNCES RECORD SALES AND EARNINGS FOR FOURTH QUARTER AND RECORD 
ANNUAL RESULTS</TITLE>  
</HEAD>  
<body background="/fact-images/
backgrnd.gif">  
<TABLE WIDTH=100%><TR><TD ROWSPAN=2><IMG SRC="/fact-
images/document.gif" border=0></TD>  
					<TD ALIGN=RIGHT VALIGN=TOP>
<A HREF="/cgi-bin/factory.exe/front"><IMG SRC="/fact-images/smallogo.
gif" border=0></A></TD></TR>  
<TR><TD ALIGN=RIGHT VALIGN=BOTTOM><A 
HREF="http://www.postnet.com">St. Louis PostNet</A><BR>Wednesday, 
December 27, 1995</TD></TR>  
</TABLE>  
<HR>  
<h3>  


ROPER INDUSTRIES, INC., ANNOUNCES RECORD SALES AND EARNINGS FOR FOURTH 
QUARTER AND RECORD ANNUAL RESULTS  


</h3>  
<EM>  
BOGART, Ga., Dec. 
18 /PRNewswire/ via the Business FACTory -</EM>  


<A HREF="fact?144.28152">Roper Industries</A> (Nasdaq: ROPR) announced 
today that it 
achieved record earnings for its fiscal fourth quarter ended October 
31, 1995 of $9.2 million ($.60 per share) on a record level $54.1 
million in sales.  

This compares with fourth quarter 1994 earnings of 
$7.3 million ($.49 per share) on $43.1 million in sales.  

Current quarter results reflect stock bonus expenses of $1.1 million as 
compared to comparable expenses of $391,000 in the prior year quarter.


  These full-year expenses were $2.2 million in fiscal 1995 and $1.5 
million in fiscal 1994, and are not expected to continue into the 1996
 fiscal year.  


<p>  
The Company indicated that the reasons for the 
fourth quarter increase in sales and earnings were strong core 
business sales (excluding sales to Gazprom, the Russian natural gas 
company) and the inclusion of recent acquisitions --ISL acquired 
August 31, 1994, <A HREF="fact?144.35200">Uson</A> acquired February 
28, 1995 and <A HREF="fact?144.33720">Metrix</A> acquired September 29
, 1995.  

Core business sales, excluding Gazprom, were up 34% over the 
prior year quarter as compared with the overall business growth of 25.
5%.  

Incoming orders for the core businesses (on a pro forma basis to 
include ISL, Uson and Metrix) were up 11% for the quarter and 17.6% 
year-over-year.  


<p>  


Net sales for the year ended October 31, 1995 
were $175.4 million as compared to $147.7 million for 1994.  

Net earnings increased to $23.3 million ($1.54 per share) as compared to $
20.9 million ($1.39 per share) before the effect of accounting changes
 in fiscal year ended 1994.  

The cumulative effect of adopting SFAS 
Nos. 106 and 109 in 1994 (relating to accounting for postretirement 
benefits and income taxes, respectively) was to reduce fiscal year 
1994 net earnings by $.7 million ($.05 per share) to $1.34.  


<p>  

The Company also indicated that the outlook for increased sales and 
earnings for fiscal 1996 is excellent.  Overall, business remains 
strong and there will be the added benefit for the full year of its 
two 1995 acquisitions, Uson and Metrix.  
<p>  
Roper Industries, Inc.
, is an international manufacturer of fluid handling and industrial 
control products.  Its operations are reported in two segments: Fluid 
Handling (Roper Pump Company, Cornell Pump Company and Integrated 
Designs L.P.) and Industrial Controls (Amot Controls Corporation, Amot
 Controls Ltd., Compressor Controls Corporation, Instrumentation 
Scientifique de Laboratoire, Uson L.P. and Metrix Instrument L.P.)  
<
p>  
<HR>  
<pre>  
                ROPER INDUSTRIES, INC. AND 
SUBSIDIARIES  
                  Condensed Consolidated Balance Sheets
  
                        (dollars in thousands)  

                            (Unaudited)  
  

                                               10/31/95    10/31/94  

        ASSETS  
        Current assets:  
     Cash and cash 
equivalents                 $  2,322    $  2,023  
     Receivables
                                 38,853      32,443  
     Inventories
                                 23,330      17,452  
     Prepaid 
expenses and other                   2,063       1,293  
     Total 
current assets                        66,568      53,211  
        
Property, plant and equipment  
     Property, plant and equipment
               45,583      41,970  
     Less: accumulated 
depreciation             (24,834)    (22,505)  
     Property, plant 
and equipment, net          20,749      19,465  
     Intangible and 
other assets, net            68,228      49,306  
     Total assets
                              $155,545    $121,982  
        
LIABILITIES AND STOCKHOLDERS' EQUITY  
        Current liabilities:  

     Accounts payable                          $  7,690    $  7,253  

     Other current liabilities                   15,051      10,086  

     Income taxes payable                         4,959       3,466  

     Total current liabilities                   27,700      20,805  

        Non-Current Liabilities  
     Long-term debt
                              20,150      16,683  
     Other 
liabilities                            2,100       1,630  
     Total 
liabilities                           49,950      39,118  
        
Stockholders' equity:  
     Preferred stock
                                ---         ---  
     Common stock
                                   149         148  
     Additional 
paid-in capital                  42,744      40,197  
     Retained 
earnings                           62,702      42,519  
     Total 
stockholders' equity                 105,595      82,864  
     Total 
liabilities and  
      stockholders' equity                     $155,
545    $121,982  
  
  
               ROPER INDUSTRIES, INC. AND 
SUBSIDIARIES  
             Condensed Consolidated Statements of 
Earnings  
             (dollars in thousands, except per share data) 
 
                           (Unaudited)  
  

                                        3 mos. ended       Years ended
  
                                     10/31/95 10/31/94  10/31/95 10
/31/94  
     Net sales                        $54,093  $43,084  $175,
421 $147,683  
     Cost of sales                     23,288   18,595
    81,618   69,299  
     Gross profit                      30,805   
24,489    93,803   78,384  
     Selling, gen. and admin. exps.    16,
545   12,977    56,392   45,454  
     Income from operations
            14,260   11,512    37,411   32,930  
     Interest expense
                     453      476     1,952    1,477  
     Other 
income                         441      106       542      150  
     
Earnings before income taxes      14,248   11,142    36,001   31,603  

     Income taxes                       5,097    3,835    12,730   10
,741  
     Earnings before cumulative effect  
      of accounting 
changes             9,151    7,307    23,271   20,862  
     
Cumulative effects of accounting  
      changes, net of tax benefit  

      of $371                             ---      ---       ---    (
720)  
     Net earnings                     $ 9,151  $ 7,307  $ 23,
271 $ 20,142  
        Earnings per common share  
     Earnings 
before cumulative effect  
      of accounting changes           $  0.
60  $  0.49  $   1.54  $  1.39  
     Cumulative effect of accounting 
 
      changes                             ---      ---       ---   (
0.05)  
     Net earnings                     $  0.60  $  0.49  $   1.
54  $ 1.34  
     Weighted average common shares  
      and common 
share equivalents  
      outstanding                      15,234   15
,000    15,130  15,014  
  
  
              ROPER INDUSTRIES, INC. 
AND SUBSIDIARIES  
          Condensed Consolidated Statements of 
Earnings  
         Listed Percentages are as a Percent of Net Sales  

                          (Unaudited)  
  

                                        3 mos. ended       Years ended
  
                                     10/31/95 10/31/94  10/31/95 10
/31/94  
     Net sales                         100.0%   100.0%   100.
0%   100.0%  
     Cost of sales                      43.1%    43.2%
    46.5%    46.9%  
     Gross profit                       56.9%    
56.8%    53.5%    53.1%  
     Selling, gen. and admin. exps.     30.6
%    30.0%    32.2%    30.8%  
     Income from operations
             26.3%    26.8%    21.3%    22.3%  
     Interest expense
                    0.8%     1.1%     1.1%     1.0%  
     Other 
income                        0.8%     0.2%     0.3%     0.1%  
     
Earnings before income taxes       26.3%    25.9%    20.5%    21.4%  

     Income taxes                        9.4%     8.9%     7.2%     7.
3%  
     Earnings before cumulative effect  
      of accounting 
changes             16.9%    17.0%    13.3%    14.1%  
  
  

              ROPER INDUSTRIES, INC. AND SUBSIDIARIES  

                      Segment Financial Data  
                      (
dollars in thousands)  
                           (Unaudited)  
  

        Three months ended Oct. 31,          1995     1994   % Change 
 
        Net sales:  
     Industrial controls                   $33,
642  $28,239    19.1  
     Fluid handling                         20,
451   14,845    37.8  
     Total                                 $54,
093  $43,084    25.6  
        Gross profit:  
     Industrial 
controls                   $20,638  $17,871    15.5  
     Fluid 
handling                         10,167    6,618    53.6  
     Total
                                 $30,805  $24,489    25.8  
        
Operating profit(a)  
     Industrial controls                   $ 8,
582  $ 8,520     0.7  
     Fluid handling                          6,
797    3,819    78.0  
     Total                                 $15,
379  $12,339    24.6  
  
       Years ended Oct. 31,                 
1995     1994   % Change  
        Net sales:  
     Industrial 
controls                  $101,448 $ 91,013    11.5  
     Fluid 
handling                         73,973   56,670    30.5  
     Total
                                $175,421 $147,683    18.8  
        
Gross profit:  
     Industrial controls                  $ 58,138 $ 
54,331     7.0  
     Fluid handling                         35,665   
24,053    48.3  
     Total                                $ 93,803 $ 
78,384    19.7  
        Operating profit(a)  
     Industrial 
controls                  $ 17,929 $ 22,660   (20.9)  
     Fluid 
handling                         23,132   13,441    72.1  
     Total
                                $ 41,061 $ 36,101    13.7  
  
</pre> 
 
<HR>  
(a) Operating profit is before any allocation for corporate 
general and administrative expenses.  


Corporate general and 
administrative expenses were $1,119,000 for quarter ended Oct. 31, 
1995, and $827,000 for quarter ended Oct. 31, 1994, and $3,650,000 and
 $3,171,000 for the years ended Oct. 31, 1995 and 1994, respectively.


 
 
<p>  
<table>  
<tr valign=top><td><EM>Contact: </EM></td>  
<td>A. 
Donald O'Steen, Vice President and Chief Financial Officer, Roper 
Industries, 706-369-7170<br>  
</td>  
</tr></table>  
<HR>Copyright &
copy 1995 <A href="kfp">Knowledge Factory Partners, L.L.C.</A>  
  
</
HTML>  



XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

<HTML>  
<HEAD>  
<TITLE>Business FACTory: Devtek Corp. announces 
first quarter results</TITLE>  
</HEAD>  
<body background="/fact-
images/backgrnd.gif">  
<TABLE WIDTH=100%><TR><TD ROWSPAN=2><IMG SRC="
/fact-images/document.gif" border=0></TD>  
					<TD ALIGN=RIGHT 
VALIGN=TOP><A HREF="/cgi-bin/factory.exe/front"><IMG SRC="/fact-images
/smallogo.gif" border=0></A></TD></TR>  
<TR><TD ALIGN=RIGHT VALIGN=
BOTTOM><A HREF="http://www.postnet.com">St. Louis PostNet</A><BR>
Wednesday, December 27, 1995</TD></TR>  
</TABLE>  
<HR>  
<h3>  
<A 
HREF="fact?144.0">Devtek Corp</A>. announces first quarter results  
<
/h3>  
<EM>  
MARKHAM, ONTARIO (BUSINESS WIRE) Dec. 11, 1995 via the 
Business FACTory -</EM>  
<A HREF="fact?144.0">DEVTEK CORPORATION</A> 
(TSE, ME:DEK.A DEK.B ) 


;; 1/9 11.2 --  Has the 'comma-year' problem.
;;    There's a typo in the first dollar amount that strands the final
;;      three zeros.
;;    Should add a category for adverbs like "slightly" that modify
;;      amounts of changes. 
;;
Devtek Corporation reported sales for the first
 quarter of fiscal 1996 ending October 31, 1995 were $63,345, 000 up 
slightly from sales of $62,207,000 for the same period in 1995.  


<p> 
 



Net income from operations, was $1,181,000, or $0.10 per share. 


Comparable figures for the same period in 1995 were $969,000, or $0.09
 per share. 


Effective August 1, 1995, the company sold the business of
 Devtek Applied Electronics (DAE) resulting in a profit of $8,085,000 
or $0.65 per share. 

When this profit is included, the total earnings 
for the first quarter is $9,266,000 or $0.75 per share.  


<p>  
Devtek
's strategy is to participate in those businesses in which we have a 
distinct advantage and can establish market leadership.  In addition, 
the Company's goal is to move towards a stronger financial structure. 
Two significant transactions were completed during the first quarter 
to support this strategy.  As already noted, DAE was sold and secondly
, Devtek acquired all of the remaining shares of Tridon Limited which 
signals the Company's move towards a stronger presence in both the 
automotive aftermarket and Original Equipment Manufacturing (OEM) 
markets.  
<p>  
Devtek's management expressed confidence that these 
transactions, together with favourable market conditions, will sustain
 the trend in profit growth during the remainder of fiscal 1996.  
<p>
  
Devtek is an international developer and manufacturer of systems 
and components for the automotive; aircraft, industrial and defence 
markets.  
<p>  
<table>  
<tr valign=top><td><EM>Contact: </EM></td> 
 
<td>Murray Kingsburgh, (905) 477-6861<br>  
(905) 477-0481 Fax<br>  

</td>  
</tr></table>  
<HR>Copyright &copy 1995 <A href="kfp">
Knowledge Factory Partners, L.L.C.</A>  
  
</HTML>  



XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

<HTML>  
<HEAD>  
<TITLE>Business FACTory: Minneapolis' Polaris Tops 
$1 Billion in Recreational Vehicle Sales</TITLE>  
</HEAD>  
<body 
background="/fact-images/backgrnd.gif">  
<TABLE WIDTH=100%><TR><TD 
ROWSPAN=2><IMG SRC="/fact-images/document.gif" border=0></TD>  
					<
TD ALIGN=RIGHT VALIGN=TOP><A HREF="/cgi-bin/factory.exe/front"><IMG 
SRC="/fact-images/smallogo.gif" border=0></A></TD></TR>  
<TR><TD 
ALIGN=RIGHT VALIGN=BOTTOM><A HREF="http://www.postnet.com">St. Louis 
PostNet</A><BR>Wednesday, December 27, 1995</TD></TR>  
</TABLE>  
<HR
>  
<h3>  
Minneapolis' Polaris Tops $1 Billion in Recreational 
Vehicle Sales  
</h3>  
<EM>  
By Juan Miguel Pedraza, Grand Forks 
Herald, N.D.<br>  
Knight-Ridder/Tribune Business News<br>  
</EM><P> 
 
<EM>  
Dec. 12 via the Business FACTory -</EM>  



<A HREF="fact?144.47197">Polaris Industries</A> announced Monday 
that the company has topped $1 billion in sales for the first time.  



<p>  
"This is a 
significant milestone, and we are especially proud because our growth 
has come from within," said W. Hall Wendel Jr., Polaris chairman and 
chief executive officer, in a statement.  
<p>  
This year's financial
 growth spurt was fueled by consumer demand for the company's all-
terrain vehicles, snowmobiles, personal watercraft and associated 
merchandise, Wendel said.  
<p>  
"Combined sales of all Polaris 
product lines in 1995 are expected to be at least 30 percent over the 
prior year," he said, including even bigger jumps in sales of 
watercraft and ATVs. The company, headquartered in Minneapolis, 
manufactures most of its products in Roseau, Minn.  
<p>  
Polaris, 
the world's leading snowmobile manufacturer, began building its snow 
craft in 1954. The company's stock -- listed as PII -- trades on the 
New York and the Pacific stock exchanges. The stock closed at $30 1/8 
Monday, down 5/8 from Friday. The stock's high was $34 1/4, its low, $
25.  
<p>  
<HR>Copyright &copy 1995 <A href="kfp">Knowledge Factory 
Partners, L.L.C.</A>  
  
</HTML>  



XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

<HTML>  
<HEAD>  
<TITLE>Business FACTory: Bristol Myers issues 
outlook</TITLE>  
</HEAD>  
<body background="/fact-images/backgrnd.
gif">  
<TABLE WIDTH=100%><TR><TD ROWSPAN=2><IMG SRC="/fact-images/
document.gif" border=0></TD>  
					<TD ALIGN=RIGHT VALIGN=TOP><A HREF
="/cgi-bin/factory.exe/front"><IMG SRC="/fact-images/smallogo.gif" 
border=0></A></TD></TR>  
<TR><TD ALIGN=RIGHT VALIGN=BOTTOM><A HREF="
http://www.postnet.com">St. Louis PostNet</A><BR>Wednesday, December 
27, 1995</TD></TR>  
</TABLE>  
<HR>  
<h3>  
Bristol Myers issues 
outlook  
</h3>  
<EM>  
NEW YORK, Dec. 11 (UPI) via the Business 
FACTory -</EM>  


<A HREF="fact?144.10342">Bristol-Myers Squibb</A>, 
citing potential acquisitions, said (Monday) it will take a fourth-
quarter restructuring charge of $250 million to $300 million. 


;; 1/9 11.2  Main clause is ok. 
;;    Leading time-period needs to be appreciated as such and
;;     made available to the discourse routines.
;;
For the fourth quarter, Bristol Myers reported net income of $98.6, or 19 
cents a share, on charges of $488 million, or 96 cents a share, 
related to pending and future breast implant product liability claims.


;;This is just a repetition.
  
<p>  
NEW YORK, Dec. 11 (UPI) _ Bristol-Myers Squibb, citing 
potential acquisitions, said (Monday) it will take a fourth-quarter 
restructuring charge of $250 million to $300 million. For the fourth 
quarter, Bristol Myers reported net income of $98.6, or 19 cents a 
share, on charges of $488 million, or 96 cents a share, related to 
pending and future breast implant product liability claims.  
<p>  
<
HR>Copyright &copy 1995 <A href="kfp">Knowledge Factory Partners, L.L.
C.</A>  
  
</HTML>  



XXXXXXXXXXXX

'Valoline" dies when it tries to make a city and gets hung up
 in a polyword def.

XXXXXXXXXXX

"Arkansas Best' -- PNF/PREFER-HEADS-OVER-MODIFIERS can't sort out
  edges over "operating" in "ANNOUNCES OPERATING LOSSES"


XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

<HTML>  
<HEAD>  
<TITLE>Business FACTory: 
Marshall Industries reports record second quarter operating results
</TITLE>  
</HEAD>  
<
body background="/fact-images/backgrnd.gif">  
<TABLE WIDTH=100%><TR><
TD ROWSPAN=2><IMG SRC="/fact-images/document.gif" border=0></TD>  
			
		<TD ALIGN=RIGHT VALIGN=TOP><A HREF="/cgi-bin/factory.exe/front"><IMG
 SRC="/fact-images/smallogo.gif" border=0></A></TD></TR>  
<TR><TD 
ALIGN=RIGHT VALIGN=BOTTOM><A HREF="http://www.postnet.com">St. Louis 
PostNet</A><BR>Wednesday, December 27, 1995</TD></TR>  
</TABLE>  
<HR
>  
<h3>  


<A HREF="fact?144.46455">Marshall Industries</A> reports 
record second quarter operating results  


</h3>  
<EM>  
EL MONTE, 
CALIF. (BUSINESS WIRE) Dec. 11, 1995 via the Business FACTory -</EM>  



<A HREF="fact?144.46455">Marshall Industries</A> (NYSE:MI) Monday 
reported record operating results for the three-month period ended Nov
. 30, 1995, the second quarter of fiscal year 1996.  



<p>  

The company's net sales for the second quarter of fiscal 1996 increased by
 21% to $295,532,000 from $243,827,000 for the same period a year ago.


Net income for the quarter increased by 45% to $13,639,000 or 78 
cents per share from $9,389,000 or 54 cents per share a year ago.  

The net sales and net income amounts reported for the second quarter of 
fiscal 1996 were the highest levels achieved by the company for a 
quarter.  


<p>  


For the six months ended Nov. 30, 1995, net sales 
increased by 22% to $571,402,000 from $466,928,000 for the same period
 last year. 


;; 1/9 11.0  -- Ouch!  "period" was scanned as ".", so there presumably
;;      isn't already an interpretation of that word as an anaphor for
;;      'time periods'.  
;;     New pattern for how the amount (%) of an increase is linked to
;;     the verb ("by").
;;
Net income for the six-month period increased by 43% to $25,838,000 
or $1.48 per share from $18,125,000 or $1.04 per share in 
the prior year.  



<p>  
The company's management attributes the record
 second quarter results to the continuing strong market for electronic
 components, particularly semiconductor products.  The decline in 
gross profit margins for fiscal 1996, compared with 1995, was due to 
competitive pressures on many of the company's products and the 
increase in the sales volume of some lower margin products.  
<p>  

Robert Rodin, president and chief executive officer of Marshall 
Industries, commented that in addition to the record performance for 
the second quarter, the company recently signed a distribution 
agreement with <A HREF="fact?144.9202">Advanced Micro Devices</A> (AMD
) to distribute its full line of semiconductor products throughout 
North America beginning in January 1996.  
<p>  
The company also 
successfully implemented its 24-hour manned technical and service 
capability in October, which is the first in the industry. Rodin 
stated that "the company continues to be positioned with world class 
suppliers and innovative services designed to exceed the expectations 
of its business partners."  
<p>  
Marshall Industries is the fourth 
largest domestic distributor in sales volume of industrial electronic 
components and production supplies. -0-  
<p>  
<HR>  
<pre>  

                             Marshall Industries  

                        Condensed Income Statements  

                   (000s omitted except per share data)  

                                (unaudited)  
  

                               Three months ended     Six months ended
  
                                     Nov. 30,             Nov. 30, 
 
                                 1995      1994       1995      1994
  
  
 Net sales                    $295,532  $243,827   $571,402  $
466,928  
  Cost of sales                241,840   197,562    466,765
   376,551  
  
 Gross profit                   53,692    46,265    
104,637    90,377  
  Selling, general and  
   administrative 
expenses      30,212    29,648     60,110    58,235  
  
 Income from 
operations         23,480    16,617     44,527    32,142  
  Interest 
expense--net            281       428        589       967  
  
 
Income before taxes            23,199    16,189     43,938    31,175  

  Provision for income taxes     9,560     6,800     18,100    13,050
  
  
 Net income                    $13,639   $ 9,389    $25,838   $
18,125  
  
 Net income per share         78 cents  54 cents     $ 1.
48    $ 1.04  
  
 Average number of  
  shares outstanding
            17,522    17,449     17,513    17,432  
 -0-  
</pre>  
<
HR>  
Marshall Industries  
<p>  
<HR>  
<pre>  
                    
Balance Sheets  
                    (000s omitted)  

                                  Nov. 30,      May 31,  

                                   1995          1995  
</pre>  
<HR> 
 
(unaudited)    (audited) Assets  Cash $  1,670      $  3,508 
Receivables 144,028       137,892 Inventories 217,689       196,097 
Deferred taxes and other assets 10,802        10,723 Total current 
assets 374,189       348,220  Property, plant and equipment - net
         40, 456   40,661 Note receivable                             
29,872 29,050 Other assets                                 4,366
         5, 376 Total long-term assets                    74,694
        75,087 Total assets   $448,883      $423,307 Liabilities and 
Shareholders' Investment  Accounts payable $ 92,494      $ 80,055 
Accrued expenses and other liabilities 14,172        13,771 Total 
current liabilities                106, 666   93,826  Long-term debt
                              32,000 45,205 Deferred taxes
                               4,524         4, 524 Total long-term 
liabilities               36,524        49,729 Shareholders' 
investment                   305,693       279,752  Total liabilities 
and shareholders' investment                 $448,883 $423,307  
<p>  

<table>  
<tr valign=top><td><EM>Contact: </EM></td>  
<td>Marshall 
Industries<br>  
Robert Rodin, 818/307-6004<br>  
Henry Chin, 818/307-
6232<br>  
</td>  
</tr></table>  
<HR>Copyright &copy 1995 <A href="
kfp">Knowledge Factory Partners, L.L.C.</A>  
  
</HTML>  




XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

<HTML>  
<HEAD>  
<TITLE>Business FACTory: Enzo Biochem reports gains
 in first quarter operating results</TITLE>  
</HEAD>  
<body 
background="/fact-images/backgrnd.gif">  
<TABLE WIDTH=100%><TR><TD 
ROWSPAN=2><IMG SRC="/fact-images/document.gif" border=0></TD>  
					<
TD ALIGN=RIGHT VALIGN=TOP><A HREF="/cgi-bin/factory.exe/front"><IMG 
SRC="/fact-images/smallogo.gif" border=0></A></TD></TR>  
<TR><TD 
ALIGN=RIGHT VALIGN=BOTTOM><A HREF="http://www.postnet.com">St. Louis 
PostNet</A><BR>Wednesday, December 27, 1995</TD></TR>  
</TABLE>  
<HR
>  
<h3>  
<A HREF="fact?144.13405">Enzo Biochem</A> reports gains in 
first quarter operating results  
</h3>  
<EM>  
FARMINGDALE N.Y. (
BUSINESS WIRE) Dec. 18, 1995 via the Business FACTory -</EM>  


<A HREF="fact?144.13405">Enzo Biochem</A> Inc. (ASE:ENZ) today announced 
increased operating results for the fiscal first quarter ended Oct. 31
, 1995. 

Revenues for the first quarter ended Oct. 31, 1995, increased 
6.6%, 

with pre-tax operating income rising 76% and net income 
advancing 23%.  

Operating results excluded the favorable impact of 
Enzo's $18 million gain from Johnson & Johnson in the year-ago quarter
. 

Revenues for the fiscal 1996 first quarter amounted to $8,028,000.  


Pre-tax income increased to $1,321,000, compared to $750,000 excluding
 the net gain on the J & J settlement.  

;; done
On the same basis, earnings 
increased to $904,000 or $0.04 per share, compared with $735,000 or $0
.03 per share for the corresponding period in the prior year.  


Including the J & J payment, net income in the year-ago period 
amounted to $18,735,000 or $0.86 per share. 

Per share calculations are
 based on weighted average common shares outstanding of 22,351,000 and
 21,793,000, respectively. 

Sales of medical research products 
increased 15.8% and 

operating profits in the diagnostic division rise 
58%, the company reported. 

The results do not fully reflect the 
benefits from recently signed distributorship agreements covering 
research products sold to the worldwide medical market. 

Revenues from 
Enzo Clinical Labs also rose due to increased market penetration. "
Operations are strong and trends are highly favorable," said Elazar 
Rabbani, Ph.D., Enzo's President and Chief Executive Officer. 

"Enzo is profitable and generating positive cash flow, even with our 
significant investment in the therapeutic area, where we continue to 
make important progress." 

The Company reported working capital of over
 $30 million on Oct. 31, 1995, including cash of over $15 million.  


The current ratio stood at 5:1 and shareholders' equity increased to $
62 million. Enzo Biochem is engaged in the research, development and 
manufacture of innovative health care products based on molecular 
biology and genetic engineering techniques, and in providing 
diagnostic services to the medical community. -0  
<p>  
<HR>  
<pre> 
 
                       ENZO BIOCHEM, INC.  
              SELECTED 
STATEMENT OF OPERATIONS DATA  
                         (UNAUDITED)  

  
                                  Three Months Ended  

                                   October 31, 1995  

                                  1995         1994  
  
 Operating 
revenues             $8,556       $8,028  
 Litigation settlement  
  
gain, net of legal fees  
  & taxes, provision for
                     18,000(a)  
  income  
 Income before provision  

  for income taxes               1,321          750  
 Provision for 
income taxes        417           15  
 Net Income
                       $904      $18,735  
 Earnings per share
              $0.04        $0.86(a)  
 Weighted average common  
  
shares                        22,351       21,793  
  
 (a) Includes 
one-time gain of $18 million or $0.83 per share from  
 the Johnson & 
Johnson settlement.  
  
  
</pre>  
<table>  
<tr valign=top><td><EM>
Contact: </EM></td>  
<td>Enzo Biochem<br>  
Barry Weiner<br>  
212/
856-0876<br>  
or<br>  
Anreder and Company<br>  
Steve Anreder<br>  

212/421-4020<br>  
</td>  
</tr></table>  
<HR>Copyright &copy 1995 <A
 href="kfp">Knowledge Factory Partners, L.L.C.</A>  
  
</HTML>  




XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

;; loses it to a double-paren hook 


<HTML>  
<HEAD>  
<TITLE>Business FACTory: 

Cabletron Systems reports record third quarter earnings and revenue

</TITLE>  
</HEAD>  
<body 
background="/fact-images/backgrnd.gif">  
<TABLE WIDTH=100%><TR><TD 
ROWSPAN=2><IMG SRC="/fact-images/document.gif" border=0></TD>  
					<
TD ALIGN=RIGHT VALIGN=TOP><A HREF="/cgi-bin/factory.exe/front"><IMG 
SRC="/fact-images/smallogo.gif" border=0></A></TD></TR>  
<TR><TD 
ALIGN=RIGHT VALIGN=BOTTOM><A HREF="http://www.postnet.com">St. Louis 
PostNet</A><BR>Wednesday, December 27, 1995</TD></TR>  
</TABLE>  
<HR
>  
<h3>  


<A HREF="fact?144.20420">Cabletron Systems</A> reports 
record third quarter earnings and revenue  


</h3>  
<EM>  
ROCHESTER, 
N.H. (BUSINESS WIRE) Dec. 18, 1995 via the Business FACTory -</EM>  


<A HREF="fact?144.20420">Cabletron Systems</A> Inc. (NYSE: CS) today 
reported operating results for the third quarter which ended Nov. 30, 
1995. 

 
<p>  


;; 1/9 9.7 -- new toplevel pattern combining the fin-dat+value and
;;            the change-by-amount+comparison
;;    Also (in the comparison) a new pattern for fin-dat+value and the
;;      reporting-period. 
Net sales of $275.5 million represented a 31 percent 
increase over sales of $210.0 million reported in the third quarter of
 the preceding year. 

;; 1/9 9.75 -- No rule for 'financial-data' + 'valued-at-value'
;;   and furthermore the field to fill is implicit in the identify
;;   of the fin-dat involved.
;;     Otherwise it has the same general patterning as the last one.
;;
Earnings per share were 78 cents representing a 
32 percent increase over earnings per share of 59 cents in the 
comparable quarter of the preceding year.  


<p>  


;; 1/9 9.8 -- Same missing 'financial-data' + 'valued-at-value' rule. 
;;    Also no rule to fold in the 'change-by-amount' adjunct
;;
Net sales for the 
first nine months of fiscal year 1996 were $773.5 million, a 32 
percent increase, compared to $584.7 million in the first nine months 
of the preceding fiscal year.  



<p>  



;; 1/9 9.85 -- ditto, and the rule wouldn't have completed without
;;   a 'search' since the 'ended-at-date'+comma-year' problem occurred.
;;   Otherwise, the 'change-by-amount' is introduced using
;;   a main verb ("represented") rather than as a simple adjunct

Net income in the third quarter 
ended Nov. 30, 1995 totaled $55.9 million represented a 34 percent 
increase over net income of $41.8 million in the comparable quarter of
 the preceding fiscal year.  

Net income for the nine months ended Nov.
 30, 1995 totaled $156.9 million or $2.19 per share, compared to net 
income of $116.5 million or $1.63 per share for the comparable nine 
months of the prior fiscal year.  
<p>  
"Third quarter results 
indicate growing confidence in Cabletron's Synthesis framework for 
migrating customers to switched virtual networks, " said Craig Benson,
 Cabletron's chairman, COO and treasurer.  "With Cabletron's recently 
announced SmartSwitches shipping ahead of schedule and significant 
customer interest in SPECTRUM 4.0, we are now strategically positioned
 to capitalize on the tremendous opportunities in the switched virtual
 networking markets."  
<p>  
Headquartered in Rochester, N.H., 
Cabletron employs more than 5,500 people in over 80 offices around the
 world.  The worldwide modular hub market leader (1), Cabletron is ISO
-9001 certified. Cabletron develops, manufactures and markets Ethernet
, FDDI, Token Ring, ATM internetworking and Enterprise Management 
software products based on its Synthesis product framework.  
<p>  

Cabletron directly services customer sites around the globe and 
provides 7 x 24 support coverage, with free phone support during 
normal business hours.  A component of the S&P 500 index, Cabletron's 
common stock is traded over the New York Stock Exchange under the 
symbol CS.  Over the last four quarters, the company has reported 
record revenue of approximately $1 billion and earnings of $202 
billion. -0- (Consolidated Condensed Statements of Income and Balance 
Sheets to follow)  
<p>  
<HR>  
<pre>  
    Cabletron Systems Inc.  

    Consolidated condensed statements of income (three months  
    
and nine months ending Nov. 30, 1995 and Nov. 30, 1994)  
    (in 
thousands, except earnings per share)  
  
  

                           (unaudited)      (unaudited)  

                         Second quarter     Nine months  

                          1995    1994      1995    1994  
  
 Net 
sales            $275,464  $210,013 $773,517  $584,712  
 Cost of 
sales         111,673    85,435  313,226   237,962  
 Gross profit
          163,791   124,578  460,291   346,750  
 Operating expenses: 
 
    R&D                 29,554    22,003   83,434    60,350  
    SG
&A                53,674    41,036  149,902   114,619  
  
 Operating 
income  
  before interest       80,563    61,539  226,955   171,781  

  
 Interest income (net)   4,594     2,421   12,260     6,631  
  
 
Income from operations  
  before income taxes   85,157    63,960  239
,215   178,412  
  
 Income taxes           29,294    22,130   82,285
    61,957  
  
 Net income             55,863    41,830  156,930   
116,455  
  
 Earnings per share       0.78      0.59     2.19      1.
63  
  
 Weighted average  
  common shares  
  outstanding           
71,988    71,503   71,727    71,451  
  
 -0-  
  
    Cabletron 
Systems Inc.  
    Consolidated condensed balance sheets (ended Nov. 
30, 1995  
    (unaudited


|#
