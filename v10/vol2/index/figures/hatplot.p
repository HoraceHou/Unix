%!PS-Adobe-1.0
%%Title: S QPE graphics
%%Creator: Trevor Hastie
%%CreationDate: Mon Mar  5 22:03:39 1990
%%Pages: (atend)
%%BoundingBox: 20.8788 11.802 590.881 780.438
%%EndComments
% beginning of preamble
100 dict begin
/bd {bind def} def
% drawing commands
/I {Coord SetPage 1 setlinecap 1 setlinejoin
    LineTypes {RastersPerPoint ScaleArray} forall
    /Helvetica findfont
    PointSize RastersPerPoint mul Cex mul scalefont setfont} bd
/A {PageBegin} bd
/B {newpath} bd
/C {currentpoint stroke moveto} bd
/E {stroke} bd
/M {moveto} bd
/L {lineto} bd
/S {moveto lineto stroke} bd
/F {closepath fill} bd
/P {gsave moveto Pch-x Pch-y rmoveto Pch Show grestore} bd
/T {/Adjust exch def gsave translate StringRot rotate 0 0 moveto
    dup stringwidth pop neg Adjust mul 0 rmoveto
    currentpoint translate TextShow grestore} bd
/X {erasepage InPage {PageEnd} if} bd
/Z {gsave showpage grestore PageEnd} bd
/W {end} bd

% parameter setting commands
/St {1 sub LineTypes dup 3 1 roll length Rem floor get 0 setdash} bd
/Sw {abs 2 div RastersPerPoint mul setlinewidth SetClip} bd
/Sc {dup dup 1 lt exch 0 ge and
     {1 exch sub setgray}
     {1 sub Colors dup 3 1 roll length Rem floor get
	dup type /arraytype eq {aload pop sethsbcolor} {setgray} ifelse} ifelse} bd
/Sp {Pch exch 0 exch put SetPchSize} bd
/Sx {dup Cex div /Ratio exch def
     /Cex exch def
     currentfont Ratio scalefont setfont
     /Pch-x Pch-x Ratio mul def
     /Pch-y Pch-y Ratio mul def
     /Text-y Text-y Ratio mul def} bd
/So {4 1 roll exch 4 -1 roll Plot astore pop SetClip} bd
/Sg {4 1 roll exch 4 -1 roll Figure astore pop SetClip} bd
/Sr {/StringRot exch def} bd
/Sh {/CharRot exch def} bd
/Sd {0 eq /ClipToPlot exch def SetClip} bd
/Sf {dup 0 lt /Outline exch def abs
     1 sub Fonts dup 3 1 roll length Rem floor get
     findfont PointSize Cex mul RastersPerPoint mul scalefont dup setfont
     dup /FontMatrix get /Matrix exch def /FontBBox get aload pop
     Matrix transform 4 2 roll Matrix transform
     exch pop add /Text-y exch def pop SetPchSize} bd

% other variable definitions
/InPage false def
/Clip 4 array def
/Page 4 array def
/Figure [0 0 1 1] def
/Plot [0 0 1 1] def
/ClipToPlot true def
/Cex 1 def
/Outline false def
/Pch 1 string def
/Pch-x 0 def
/Pch-y 0 def
/Text-y 0 def
/LineTypes [ % in default units
	[]		[1 2]		[4 4]		[8 4]
	[13 3]		[16 2 2 2]	[8 2 2 2]	[1 13]
	[6 5]		[12 4]
] def

% other procedure definitions
/Rem {2 copy div floor mul sub floor cvi} bd
/RastersPerPoint {RastersPerInch 72 div} bd
/ScaleArray {/Factor exch def /Array exch def
	     0 1 Array length 1 sub
	     {dup Array exch get Factor mul Array 3 1 roll put} for} bd
/Coord {Region aload pop /uy exch def /ux exch def /ly exch def /lx exch def
	uy ly sub ux lx sub Landscape {exch} if /Width exch def /Height exch def
	lx ly translate Landscape {90 rotate 0 Height neg translate} if
	1 RastersPerPoint div dup scale} bd
/SetPchSize {gsave
	     newpath 0 0 moveto Pch false charpath flattenpath pathbbox
	     exch 3 1 roll
	     add 2 div neg /Pch-y exch def
	     add 2 div neg /Pch-x exch def
	     grestore} bd
/TextShow {CharRot StringRot sub dup 0 eq {pop SimpleShow} {FancyShow} ifelse} bd
/SimpleShow {0 Text-y 2 div neg rmoveto Show} bd
/FancyShow {
	/RotDiff exch def
	/Cos RotDiff cos abs def
	/Sin RotDiff sin abs def
	{
		( ) dup 0 4 -1 roll put
		dup stringwidth pop /CharWidth exch def
		Cos 0 eq {
			Text-y Sin div
		} {
			Sin 0 eq {
				CharWidth Cos div
			} {
				/H Text-y Sin div def
				/W CharWidth Cos div def
				H W lt {H} {W} ifelse
			} ifelse
		} ifelse 2 div /CharDist exch def
		CharDist 0 translate 0 0 moveto
		gsave
			RotDiff rotate
			CharWidth 2 div neg Text-y 2 div neg rmoveto
			Outline {false charpath stroke} {show} ifelse
		grestore
		CharDist 0 translate 0 0 moveto
	} forall
} bd
/Show {Outline {false charpath stroke} {show} ifelse} bd
/BoxClip {/CLW currentlinewidth def
	  2 {CLW add 4 1 roll} repeat
	  2 {CLW sub 4 1 roll} repeat
	  initclip newpath 2 index exch 2 index exch dup 6 index exch
	  moveto 3 {lineto} repeat closepath clip newpath} bd
/Subregion {/A exch def /Uy exch def /Ux exch def /Ly exch def /Lx exch def
	    Ux Lx sub A 0 get mul Lx add
	    Uy Ly sub A 1 get mul Ly add
	    Ux Lx sub A 2 get mul Lx add
	    Uy Ly sub A 3 get mul Ly add} bd
/SetFigure {Page aload pop Figure Subregion} bd
/SetPlot {SetFigure Plot Subregion} bd
/SetClip {ClipToPlot {SetPlot} {SetFigure} ifelse BoxClip} bd
/SetPage {0 0 Width Height Page astore RastersPerPoint ScaleArray} bd
/PageBegin {save /PageContext exch def /InPage true def} bd
/PageEnd {PageContext restore /InPage false def} bd
% end of preamble

% fixed controlling parameters
/Landscape false def
/Region [20.8788 11.802 590.881 780.438] def
/RastersPerInch 300 def
/PointSize 14 def
/Fonts [
	/Helvetica
	/Courier
	/Times-Roman
	/Helvetica-Oblique
	/Helvetica-Bold
	/Helvetica-BoldOblique
	/Courier-Oblique
	/Courier-Bold
	/Courier-BoldOblique
	/Times-Italic
	/Times-Bold
	/Times-BoldItalic
	/Symbol
	/AvantGarde-Book
	/AvantGarde-BookOblique
	/AvantGarde-Demi
	/AvantGarde-DemiOblique
	/Bookman-Demi
	/Bookman-DemiItalic
	/Bookman-Light
	/Bookman-LightItalic
	/Helvetica-Narrow
	/Helvetica-Narrow-Bold
	/Helvetica-Narrow-BoldOblique
	/Helvetica-Narrow-Oblique
	/NewCenturySchlbk-Roman
	/NewCenturySchlbk-Bold
	/NewCenturySchlbk-Italic
	/NewCenturySchlbk-BoldItalic
	/Palatino-Roman
	/Palatino-Bold
	/Palatino-Italic
	/Palatino-BoldItalic
	/ZapfChancery-MediumItalic
	/ZapfDingbats
] def
/Colors [
	0
	0.6
	0.3
	0.9
	0.4
	0.7
	0.1
	0.5
	0.8
	0.2
] def

% all initialization action here
I

%%EndProlog


%%Page: 1 1
A
1 St
1 Sw
1 Sc
0 Sr
183 Sp
0.9 Sx
0 1 0 1 So
0 1 0.857143 1 Sg
0 Sh
0 Sd
1 Sf
88 3112 P
95 3114 P
147 3115 P
154 3113 P
174 3104 P
305 2993 P
345 2953 P
345 2953 P
364 2934 P
371 2927 P
371 2927 P
411 2891 P
483 2837 P
549 2808 P
549 2808 P
562 2804 P
588 2800 P
608 2799 P
615 2799 P
674 2807 P
681 2808 P
713 2819 P
720 2822 P
727 2824 P
727 2824 P
740 2829 P
753 2835 P
760 2838 P
760 2838 P
773 2844 P
786 2850 P
806 2859 P
812 2862 P
845 2875 P
852 2878 P
865 2882 P
871 2884 P
898 2889 P
898 2889 P
937 2890 P
983 2873 P
1049 2804 P
1056 2794 P
0.5 Sw
46 Sp
1 Sx
B
88 3112 M
98 3115 L
108 3118 L
117 3119 L
127 3118 L
137 3117 L
147 3115 L
156 3112 L
166 3108 L
176 3103 L
186 3098 L
196 3091 L
205 3085 L
215 3077 L
225 3070 L
235 3061 L
244 3053 L
254 3044 L
264 3035 L
274 3025 L
283 3015 L
293 3006 L
303 2996 L
313 2986 L
323 2976 L
332 2966 L
342 2956 L
352 2946 L
362 2936 L
371 2927 L
381 2917 L
391 2908 L
401 2899 L
411 2891 L
420 2882 L
430 2874 L
440 2867 L
450 2859 L
459 2852 L
469 2846 L
479 2839 L
489 2834 L
499 2828 L
508 2823 L
518 2819 L
528 2815 L
538 2811 L
547 2808 L
557 2805 L
567 2803 L
577 2801 L
587 2800 L
596 2799 L
606 2799 L
616 2799 L
626 2799 L
635 2800 L
645 2801 L
655 2803 L
665 2805 L
675 2807 L
684 2810 L
694 2812 L
704 2816 L
714 2819 L
723 2823 L
733 2827 L
743 2831 L
753 2835 L
763 2839 L
772 2844 L
782 2848 L
792 2853 L
802 2857 L
811 2861 L
821 2866 L
831 2870 L
841 2874 L
851 2877 L
860 2880 L
870 2883 L
880 2886 L
890 2888 L
899 2890 L
909 2891 L
919 2891 L
929 2891 L
939 2890 L
948 2888 L
958 2885 L
968 2881 L
978 2877 L
987 2871 L
997 2864 L
1007 2856 L
1017 2846 L
1026 2836 L
1036 2823 L
1046 2809 L
1056 2794 L
E
3 St
B
88 2847 M
1056 2847 L
E
1 St
1 Sw
B
154 2796 M
154 2830 L
162 2821 L
E
B
145 2821 M
154 2830 L
E
183 Sp
0.9 Sx
1319 2895 P
1326 2883 P
1378 2814 P
1385 2808 P
1405 2796 P
1536 2808 P
1576 2832 P
1576 2832 P
1596 2844 P
1602 2849 P
1602 2849 P
1642 2876 P
1714 2920 P
1780 2947 P
1780 2947 P
1793 2951 P
1820 2956 P
1839 2958 P
1846 2958 P
1905 2951 P
1912 2950 P
1945 2939 P
1951 2936 P
1958 2934 P
1958 2934 P
1971 2928 P
1984 2922 P
1991 2918 P
1991 2918 P
2004 2912 P
2017 2904 P
2037 2893 P
2043 2889 P
2076 2870 P
2083 2866 P
2096 2859 P
2103 2855 P
2129 2841 P
2129 2841 P
2169 2825 P
2215 2817 P
2280 2839 P
2287 2844 P
0.5 Sw
46 Sp
1 Sx
B
1319 2895 M
1329 2877 L
1339 2861 L
1349 2847 L
1358 2835 L
1368 2824 L
1378 2815 L
1388 2806 L
1397 2800 L
1407 2794 L
1417 2790 L
1427 2787 L
1437 2785 L
1446 2784 L
1456 2783 L
1466 2784 L
1476 2785 L
1485 2787 L
1495 2790 L
1505 2794 L
1515 2798 L
1524 2802 L
1534 2807 L
1544 2812 L
1554 2818 L
1564 2824 L
1573 2830 L
1583 2836 L
1593 2843 L
1603 2849 L
1612 2856 L
1622 2862 L
1632 2869 L
1642 2876 L
1652 2882 L
1661 2889 L
1671 2895 L
1681 2901 L
1691 2907 L
1700 2912 L
1710 2918 L
1720 2923 L
1730 2928 L
1740 2932 L
1749 2936 L
1759 2940 L
1769 2944 L
1779 2947 L
1788 2950 L
1798 2952 L
1808 2954 L
1818 2956 L
1828 2957 L
1837 2957 L
1847 2958 L
1857 2958 L
1867 2957 L
1876 2956 L
1886 2955 L
1896 2953 L
1906 2951 L
1916 2949 L
1925 2946 L
1935 2942 L
1945 2939 L
1955 2935 L
1964 2931 L
1974 2927 L
1984 2922 L
1994 2917 L
2004 2912 L
2013 2906 L
2023 2901 L
2033 2895 L
2043 2890 L
2052 2884 L
2062 2878 L
2072 2872 L
2082 2867 L
2092 2861 L
2101 2856 L
2111 2850 L
2121 2845 L
2131 2840 L
2140 2836 L
2150 2832 L
2160 2828 L
2170 2825 L
2180 2822 L
2189 2820 L
2199 2818 L
2209 2817 L
2219 2817 L
2228 2818 L
2238 2820 L
2248 2822 L
2258 2826 L
2267 2831 L
2277 2836 L
2287 2844 L
E
3 St
B
1319 2847 M
2287 2847 L
E
1 St
1 Sw
B
1912 2796 M
1912 2830 L
1920 2821 L
E
B
1903 2821 M
1912 2830 L
E
1 Sd
(polynomial) 1155 3016 0.5 T
183 Sp
0.9 Sx
0 1 0.714286 0.857143 Sg
0 Sd
88 2601 P
95 2601 P
147 2601 P
154 2601 P
174 2601 P
305 2601 P
345 2601 P
345 2601 P
364 2389 P
371 2389 P
371 2389 P
411 2389 P
483 2389 P
549 2389 P
549 2389 P
562 2389 P
588 2389 P
608 2389 P
615 2389 P
674 2389 P
681 2389 P
713 2389 P
720 2389 P
727 2389 P
727 2389 P
740 2389 P
753 2389 P
760 2389 P
760 2389 P
773 2389 P
786 2389 P
806 2389 P
812 2389 P
845 2389 P
852 2389 P
865 2389 P
871 2389 P
898 2389 P
898 2389 P
937 2389 P
983 2389 P
1049 2389 P
1056 2389 P
0.5 Sw
46 Sp
1 Sx
B
88 2601 M
345 2601 L
345 2389 L
E
3 St
B
88 2389 M
1056 2389 L
E
1 St
1 Sw
B
154 2338 M
154 2372 L
162 2364 L
E
B
145 2364 M
154 2372 L
E
183 Sp
0.9 Sx
1319 2389 P
1326 2389 P
1378 2389 P
1385 2389 P
1405 2389 P
1536 2389 P
1576 2389 P
1576 2389 P
1596 2389 P
1602 2389 P
1602 2389 P
1642 2389 P
1714 2389 P
1780 2389 P
1780 2389 P
1793 2389 P
1820 2578 P
1839 2578 P
1846 2578 P
1905 2578 P
1912 2578 P
1945 2578 P
1951 2578 P
1958 2578 P
1958 2578 P
1971 2389 P
1984 2389 P
1991 2389 P
1991 2389 P
2004 2389 P
2017 2389 P
2037 2389 P
2043 2389 P
2076 2389 P
2083 2389 P
2096 2389 P
2103 2389 P
2129 2389 P
2129 2389 P
2169 2389 P
2215 2389 P
2280 2389 P
2287 2389 P
0.5 Sw
46 Sp
1 Sx
B
1820 2389 M
1820 2578 L
1958 2578 L
1958 2389 L
E
3 St
B
1319 2389 M
2287 2389 L
E
1 St
1 Sw
B
1912 2338 M
1912 2372 L
1920 2364 L
E
B
1903 2364 M
1912 2372 L
E
1 Sd
(running mean) 1155 2559 0.5 T
183 Sp
0.9 Sx
0 1 0.571429 0.714286 Sg
0 Sd
88 2263 P
95 2256 P
147 2201 P
154 2194 P
174 2174 P
305 2037 P
345 1996 P
345 1996 P
364 1975 P
371 1968 P
371 1968 P
411 1927 P
483 1852 P
549 1932 P
549 1932 P
562 1932 P
588 1932 P
608 1932 P
615 1932 P
674 1932 P
681 1932 P
713 1932 P
720 1932 P
727 1932 P
727 1932 P
740 1932 P
753 1932 P
760 1932 P
760 1932 P
773 1932 P
786 1932 P
806 1932 P
812 1932 P
845 1932 P
852 1932 P
865 1932 P
871 1932 P
898 1932 P
898 1932 P
937 1932 P
983 1932 P
1049 1932 P
1056 1932 P
0.5 Sw
46 Sp
1 Sx
B
88 2263 M
95 2256 L
147 2201 L
154 2194 L
174 2174 L
305 2037 L
345 1996 L
345 1996 L
364 1975 L
371 1968 L
371 1968 L
411 1927 L
483 1852 L
483 1932 L
E
3 St
B
88 1932 M
1056 1932 L
E
1 St
1 Sw
B
154 1881 M
154 1915 L
162 1906 L
E
B
145 1906 M
154 1915 L
E
183 Sp
0.9 Sx
1319 1932 P
1326 1932 P
1378 1932 P
1385 1932 P
1405 1932 P
1536 1932 P
1576 1932 P
1576 1932 P
1596 1932 P
1602 1932 P
1602 1932 P
1642 1932 P
1714 1932 P
1780 1932 P
1780 1932 P
1793 1932 P
1820 2134 P
1839 2121 P
1846 2117 P
1905 2078 P
1912 2073 P
1945 2051 P
1951 2047 P
1958 2043 P
1958 2043 P
1971 2034 P
1984 2025 P
1991 2021 P
1991 2021 P
2004 1932 P
2017 1932 P
2037 1932 P
2043 1932 P
2076 1932 P
2083 1932 P
2096 1932 P
2103 1932 P
2129 1932 P
2129 1932 P
2169 1932 P
2215 1932 P
2280 1932 P
2287 1932 P
0.5 Sw
46 Sp
1 Sx
B
1820 1932 M
1820 2134 L
1839 2121 L
1846 2117 L
1905 2078 L
1912 2073 L
1945 2051 L
1951 2047 L
1958 2043 L
1958 2043 L
1971 2034 L
1984 2025 L
1991 2021 L
1991 2021 L
1991 1932 L
E
3 St
B
1319 1932 M
2287 1932 L
E
1 St
1 Sw
B
1912 1881 M
1912 1915 L
1920 1906 L
E
B
1903 1906 M
1912 1915 L
E
1 Sd
(running line) 1155 2101 0.5 T
183 Sp
0.9 Sx
0 1 0.428571 0.571429 Sg
0 Sd
88 1783 P
95 1778 P
147 1733 P
154 1728 P
174 1711 P
305 1590 P
345 1553 P
345 1553 P
364 1535 P
371 1529 P
371 1529 P
411 1498 P
483 1459 P
549 1450 P
549 1450 P
562 1451 P
588 1456 P
608 1460 P
615 1462 P
674 1473 P
681 1473 P
713 1474 P
720 1474 P
727 1474 P
727 1474 P
740 1474 P
753 1474 P
760 1474 P
760 1474 P
773 1474 P
786 1474 P
806 1474 P
812 1474 P
845 1474 P
852 1474 P
865 1474 P
871 1474 P
898 1474 P
898 1474 P
937 1474 P
983 1474 P
1049 1474 P
1056 1474 P
0.5 Sw
46 Sp
1 Sx
B
88 1783 M
94 1778 L
100 1774 L
106 1769 L
112 1764 L
118 1759 L
124 1754 L
130 1748 L
136 1743 L
142 1738 L
148 1733 L
154 1728 L
160 1723 L
166 1717 L
172 1712 L
178 1707 L
184 1702 L
190 1696 L
196 1691 L
202 1686 L
208 1680 L
214 1675 L
220 1670 L
226 1664 L
232 1659 L
238 1653 L
244 1648 L
250 1642 L
256 1637 L
262 1631 L
268 1625 L
274 1620 L
280 1614 L
285 1608 L
291 1603 L
297 1597 L
303 1591 L
309 1586 L
315 1580 L
321 1574 L
327 1569 L
333 1563 L
339 1558 L
345 1552 L
351 1547 L
357 1541 L
363 1536 L
369 1531 L
375 1526 L
381 1520 L
387 1516 L
393 1511 L
399 1506 L
405 1502 L
411 1497 L
417 1493 L
423 1489 L
429 1485 L
435 1481 L
441 1478 L
447 1474 L
453 1471 L
459 1468 L
465 1465 L
471 1463 L
477 1461 L
483 1459 L
489 1457 L
495 1455 L
501 1454 L
507 1453 L
513 1452 L
519 1451 L
525 1450 L
531 1450 L
537 1450 L
543 1450 L
549 1450 L
555 1451 L
561 1451 L
567 1452 L
573 1453 L
579 1454 L
585 1455 L
591 1456 L
597 1458 L
603 1459 L
609 1460 L
615 1462 L
621 1463 L
627 1465 L
633 1466 L
639 1467 L
645 1468 L
651 1469 L
657 1470 L
663 1471 L
669 1472 L
675 1473 L
681 1473 L
E
3 St
B
88 1474 M
1056 1474 L
E
1 St
1 Sw
B
154 1423 M
154 1457 L
162 1449 L
E
B
145 1449 M
154 1457 L
E
183 Sp
0.9 Sx
1319 1474 P
1326 1474 P
1378 1474 P
1385 1474 P
1405 1474 P
1536 1474 P
1576 1474 P
1576 1474 P
1596 1474 P
1602 1474 P
1602 1474 P
1642 1474 P
1714 1474 P
1780 1511 P
1780 1511 P
1793 1539 P
1820 1595 P
1839 1623 P
1846 1629 P
1905 1620 P
1912 1616 P
1945 1592 P
1951 1586 P
1958 1580 P
1958 1580 P
1971 1565 P
1984 1549 P
1991 1541 P
1991 1541 P
2004 1524 P
2017 1507 P
2037 1488 P
2043 1483 P
2076 1474 P
2083 1474 P
2096 1474 P
2103 1474 P
2129 1474 P
2129 1474 P
2169 1474 P
2215 1474 P
2280 1474 P
2287 1474 P
0.5 Sw
46 Sp
1 Sx
B
1714 1474 M
1718 1474 L
1721 1474 L
1724 1473 L
1728 1473 L
1731 1473 L
1734 1473 L
1738 1474 L
1741 1474 L
1744 1475 L
1747 1476 L
1751 1478 L
1754 1480 L
1757 1482 L
1761 1485 L
1764 1488 L
1767 1491 L
1771 1496 L
1774 1501 L
1777 1506 L
1781 1512 L
1784 1519 L
1787 1526 L
1791 1533 L
1794 1541 L
1797 1549 L
1801 1556 L
1804 1564 L
1807 1571 L
1811 1578 L
1814 1584 L
1817 1591 L
1821 1597 L
1824 1602 L
1827 1608 L
1831 1612 L
1834 1617 L
1837 1621 L
1841 1624 L
1844 1627 L
1847 1629 L
1851 1631 L
1854 1633 L
1857 1634 L
1861 1635 L
1864 1635 L
1867 1635 L
1871 1635 L
1874 1635 L
1877 1634 L
1880 1633 L
1884 1632 L
1887 1630 L
1890 1629 L
1894 1627 L
1897 1625 L
1900 1623 L
1904 1621 L
1907 1619 L
1910 1617 L
1914 1615 L
1917 1612 L
1920 1610 L
1924 1608 L
1927 1606 L
1930 1603 L
1934 1601 L
1937 1598 L
1940 1596 L
1944 1593 L
1947 1590 L
1950 1587 L
1954 1584 L
1957 1581 L
1960 1577 L
1964 1574 L
1967 1570 L
1970 1566 L
1974 1562 L
1977 1558 L
1980 1554 L
1984 1550 L
1987 1546 L
1990 1541 L
1994 1537 L
1997 1533 L
2000 1528 L
2004 1524 L
2007 1520 L
2010 1516 L
2014 1512 L
2017 1508 L
2020 1504 L
2023 1500 L
2027 1497 L
2030 1494 L
2033 1491 L
2037 1488 L
2040 1486 L
2043 1483 L
E
3 St
B
1319 1474 M
2287 1474 L
E
1 St
1 Sw
B
1912 1423 M
1912 1457 L
1920 1449 L
E
B
1903 1449 M
1912 1457 L
E
1 Sd
(loess) 1155 1644 0.5 T
183 Sp
0.9 Sx
0 1 0.285714 0.428571 Sg
0 Sd
88 1314 P
95 1321 P
147 1330 P
154 1327 P
174 1304 P
305 1083 P
345 1047 P
345 1047 P
364 1035 P
371 1033 P
371 1033 P
411 1022 P
483 1017 P
549 1017 P
549 1017 P
562 1017 P
588 1017 P
608 1017 P
615 1017 P
674 1017 P
681 1017 P
713 1017 P
720 1017 P
727 1017 P
727 1017 P
740 1017 P
753 1017 P
760 1017 P
760 1017 P
773 1017 P
786 1017 P
806 1017 P
812 1017 P
845 1017 P
852 1017 P
865 1017 P
871 1017 P
898 1017 P
898 1017 P
937 1017 P
983 1017 P
1049 1017 P
1056 1017 P
0.5 Sw
46 Sp
1 Sx
B
88 1314 M
92 1318 L
96 1323 L
100 1326 L
104 1329 L
108 1332 L
112 1333 L
116 1334 L
120 1335 L
124 1335 L
128 1335 L
132 1334 L
136 1333 L
140 1332 L
144 1331 L
148 1329 L
152 1328 L
156 1325 L
160 1322 L
164 1317 L
168 1312 L
172 1306 L
176 1301 L
180 1294 L
184 1288 L
188 1282 L
192 1275 L
196 1268 L
200 1261 L
204 1254 L
208 1247 L
212 1240 L
216 1233 L
220 1225 L
224 1218 L
228 1211 L
232 1203 L
236 1196 L
240 1188 L
244 1181 L
248 1174 L
252 1166 L
256 1159 L
260 1152 L
264 1145 L
268 1138 L
272 1132 L
276 1125 L
280 1119 L
283 1113 L
287 1107 L
291 1101 L
295 1095 L
299 1090 L
303 1085 L
307 1080 L
311 1076 L
315 1072 L
319 1068 L
323 1064 L
327 1061 L
331 1057 L
335 1054 L
339 1051 L
343 1048 L
347 1045 L
351 1043 L
355 1040 L
359 1038 L
363 1036 L
367 1034 L
371 1033 L
375 1031 L
379 1030 L
383 1029 L
387 1028 L
391 1026 L
395 1025 L
399 1024 L
403 1024 L
407 1023 L
411 1022 L
415 1021 L
419 1021 L
423 1020 L
427 1020 L
431 1019 L
435 1019 L
439 1019 L
443 1018 L
447 1018 L
451 1018 L
455 1018 L
459 1017 L
463 1017 L
467 1017 L
471 1017 L
475 1017 L
479 1017 L
483 1017 L
E
3 St
B
88 1017 M
1056 1017 L
E
1 St
1 Sw
B
154 966 M
154 1000 L
162 991 L
E
B
145 991 M
154 1000 L
E
183 Sp
0.9 Sx
1319 1017 P
1326 1017 P
1378 1017 P
1385 1017 P
1405 1017 P
1536 1017 P
1576 1017 P
1576 1017 P
1596 1018 P
1602 1018 P
1602 1018 P
1642 1021 P
1714 1034 P
1780 1064 P
1780 1064 P
1793 1072 P
1820 1087 P
1839 1098 P
1846 1102 P
1905 1119 P
1912 1120 P
1945 1115 P
1951 1114 P
1958 1111 P
1958 1111 P
1971 1105 P
1984 1099 P
1991 1095 P
1991 1095 P
2004 1087 P
2017 1080 P
2037 1068 P
2043 1064 P
2076 1047 P
2083 1045 P
2096 1039 P
2103 1037 P
2129 1029 P
2129 1029 P
2169 1022 P
2215 1018 P
2280 1017 P
2287 1017 P
0.5 Sw
46 Sp
1 Sx
B
1536 1017 M
1544 1017 L
1552 1017 L
1559 1017 L
1567 1017 L
1574 1017 L
1582 1017 L
1590 1018 L
1597 1018 L
1605 1018 L
1612 1019 L
1620 1019 L
1627 1020 L
1635 1020 L
1643 1021 L
1650 1022 L
1658 1022 L
1665 1023 L
1673 1025 L
1681 1026 L
1688 1028 L
1696 1029 L
1703 1031 L
1711 1033 L
1718 1036 L
1726 1039 L
1734 1041 L
1741 1045 L
1749 1048 L
1756 1052 L
1764 1055 L
1771 1059 L
1779 1064 L
1787 1068 L
1794 1072 L
1802 1077 L
1809 1081 L
1817 1086 L
1825 1090 L
1832 1094 L
1840 1098 L
1847 1102 L
1855 1106 L
1862 1109 L
1870 1112 L
1878 1114 L
1885 1116 L
1893 1118 L
1900 1119 L
1908 1120 L
1916 1120 L
1923 1119 L
1931 1118 L
1938 1116 L
1946 1115 L
1953 1113 L
1961 1109 L
1969 1106 L
1976 1102 L
1984 1099 L
1991 1094 L
1999 1090 L
2007 1086 L
2014 1081 L
2022 1077 L
2029 1072 L
2037 1068 L
2044 1064 L
2052 1060 L
2060 1056 L
2067 1052 L
2075 1048 L
2082 1045 L
2090 1042 L
2098 1039 L
2105 1036 L
2113 1034 L
2120 1031 L
2128 1029 L
2135 1027 L
2143 1026 L
2151 1025 L
2158 1024 L
2166 1023 L
2173 1022 L
2181 1021 L
2188 1020 L
2196 1020 L
2204 1019 L
2211 1019 L
2219 1018 L
2226 1018 L
2234 1018 L
2242 1017 L
2249 1017 L
2257 1017 L
2264 1017 L
2272 1017 L
2279 1017 L
2287 1017 L
E
3 St
B
1319 1017 M
2287 1017 L
E
1 St
1 Sw
B
1912 966 M
1912 1000 L
1920 991 L
E
B
1903 991 M
1912 1000 L
E
1 Sd
(kernel) 1155 1186 0.5 T
183 Sp
0.9 Sx
0 1 0.142857 0.285714 Sg
0 Sd
88 849 P
95 849 P
147 841 P
154 838 P
174 826 P
305 669 P
345 624 P
364 605 P
371 599 P
411 573 P
483 550 P
549 547 P
562 547 P
588 549 P
608 550 P
615 550 P
674 554 P
681 555 P
713 556 P
720 557 P
727 557 P
740 558 P
753 558 P
760 558 P
773 559 P
786 559 P
806 559 P
812 559 P
845 560 P
852 560 P
865 560 P
871 560 P
898 560 P
937 560 P
983 560 P
1049 560 P
1056 559 P
0.5 Sw
46 Sp
1 Sx
B
88 849 M
98 849 L
108 849 L
117 848 L
127 847 L
137 845 L
147 842 L
156 837 L
166 831 L
176 824 L
186 815 L
196 806 L
205 796 L
215 785 L
225 773 L
235 761 L
244 748 L
254 736 L
264 723 L
274 710 L
283 697 L
293 684 L
303 671 L
313 659 L
323 648 L
332 637 L
342 626 L
352 616 L
362 607 L
371 599 L
381 592 L
391 585 L
401 579 L
411 573 L
420 569 L
430 564 L
440 561 L
450 558 L
459 555 L
469 553 L
479 551 L
489 549 L
499 548 L
508 548 L
518 547 L
528 547 L
538 547 L
547 547 L
557 547 L
567 547 L
577 548 L
587 548 L
596 549 L
606 550 L
616 550 L
626 551 L
635 552 L
645 552 L
655 553 L
665 554 L
675 554 L
684 555 L
694 555 L
704 556 L
714 556 L
723 557 L
733 557 L
743 558 L
753 558 L
763 558 L
772 559 L
782 559 L
792 559 L
802 559 L
811 559 L
821 560 L
831 560 L
841 560 L
851 560 L
860 560 L
870 560 L
880 560 L
890 560 L
899 560 L
909 560 L
919 560 L
929 560 L
939 560 L
948 560 L
958 560 L
968 560 L
978 560 L
987 560 L
997 560 L
1007 560 L
1017 560 L
1026 560 L
1036 560 L
1046 560 L
1056 559 L
E
3 St
B
88 559 M
1056 559 L
E
1 St
1 Sw
B
154 508 M
154 542 L
162 534 L
E
B
145 534 M
154 542 L
E
183 Sp
0.9 Sx
1319 558 P
1326 557 P
1378 555 P
1385 555 P
1405 554 P
1536 553 P
1576 557 P
1596 559 P
1602 560 P
1642 568 P
1714 593 P
1780 627 P
1793 636 P
1820 653 P
1839 665 P
1846 669 P
1905 687 P
1912 686 P
1945 669 P
1951 664 P
1958 659 P
1971 648 P
1984 637 P
1991 632 P
2004 622 P
2017 612 P
2037 598 P
2043 594 P
2076 577 P
2083 574 P
2096 569 P
2103 566 P
2129 558 P
2169 550 P
2215 545 P
2280 541 P
2287 541 P
0.5 Sw
46 Sp
1 Sx
B
1319 558 M
1329 557 L
1339 557 L
1349 556 L
1358 556 L
1368 555 L
1378 555 L
1388 555 L
1397 554 L
1407 554 L
1417 553 L
1427 553 L
1437 553 L
1446 552 L
1456 552 L
1466 552 L
1476 552 L
1485 552 L
1495 552 L
1505 552 L
1515 553 L
1524 553 L
1534 553 L
1544 554 L
1554 555 L
1564 555 L
1573 556 L
1583 558 L
1593 559 L
1603 560 L
1612 562 L
1622 564 L
1632 566 L
1642 568 L
1652 571 L
1661 573 L
1671 576 L
1681 580 L
1691 583 L
1700 587 L
1710 591 L
1720 595 L
1730 600 L
1740 605 L
1749 610 L
1759 615 L
1769 621 L
1779 627 L
1788 633 L
1798 639 L
1808 645 L
1818 652 L
1828 658 L
1837 664 L
1847 670 L
1857 675 L
1867 680 L
1876 683 L
1886 686 L
1896 687 L
1906 687 L
1916 684 L
1925 680 L
1935 675 L
1945 668 L
1955 661 L
1964 653 L
1974 645 L
1984 637 L
1994 630 L
2004 622 L
2013 615 L
2023 608 L
2033 601 L
2043 595 L
2052 589 L
2062 584 L
2072 579 L
2082 574 L
2092 570 L
2101 567 L
2111 563 L
2121 560 L
2131 558 L
2140 555 L
2150 553 L
2160 552 L
2170 550 L
2180 549 L
2189 547 L
2199 546 L
2209 545 L
2219 544 L
2228 544 L
2238 543 L
2248 543 L
2258 542 L
2267 542 L
2277 541 L
2287 541 L
E
3 St
B
1319 559 M
2287 559 L
E
1 St
1 Sw
B
1912 508 M
1912 542 L
1920 534 L
E
B
1903 534 M
1912 542 L
E
1 Sd
(smoothing spline) 1155 729 0.5 T
183 Sp
0.9 Sx
0 1 0 0.142857 Sg
0 Sd
88 441 P
95 433 P
147 366 P
154 357 P
174 333 P
305 191 P
345 158 P
364 144 P
371 140 P
411 119 P
483 97 P
549 91 P
562 91 P
588 91 P
608 92 P
615 93 P
674 98 P
681 98 P
713 100 P
720 101 P
727 101 P
740 102 P
753 102 P
760 102 P
773 102 P
786 103 P
806 103 P
812 103 P
845 103 P
852 103 P
865 103 P
871 103 P
898 103 P
937 102 P
983 102 P
1049 101 P
1056 101 P
0.5 Sw
46 Sp
1 Sx
B
88 441 M
98 429 L
108 416 L
117 404 L
127 391 L
137 379 L
147 366 L
156 354 L
166 342 L
176 330 L
186 318 L
196 307 L
205 295 L
215 284 L
225 273 L
235 262 L
244 251 L
254 241 L
264 230 L
274 221 L
283 211 L
293 202 L
303 193 L
313 184 L
323 176 L
332 168 L
342 160 L
352 153 L
362 146 L
371 140 L
381 134 L
391 129 L
401 124 L
411 119 L
420 115 L
430 111 L
440 108 L
450 105 L
459 102 L
469 100 L
479 98 L
489 96 L
499 94 L
508 93 L
518 92 L
528 92 L
538 91 L
547 91 L
557 91 L
567 91 L
577 91 L
587 91 L
596 92 L
606 92 L
616 93 L
626 94 L
635 94 L
645 95 L
655 96 L
665 97 L
675 98 L
684 98 L
694 99 L
704 100 L
714 100 L
723 101 L
733 101 L
743 102 L
753 102 L
763 102 L
772 102 L
782 103 L
792 103 L
802 103 L
811 103 L
821 103 L
831 103 L
841 103 L
851 103 L
860 103 L
870 103 L
880 103 L
890 103 L
899 103 L
909 103 L
919 102 L
929 102 L
939 102 L
948 102 L
958 102 L
968 102 L
978 102 L
987 102 L
997 102 L
1007 101 L
1017 101 L
1026 101 L
1036 101 L
1046 101 L
1056 101 L
E
3 St
B
88 102 M
1056 102 L
E
1 St
1 Sw
B
154 51 M
154 85 L
162 76 L
E
B
145 76 M
154 85 L
E
183 Sp
0.9 Sx
1319 134 P
1326 130 P
1378 101 P
1385 98 P
1405 88 P
1536 55 P
1576 61 P
1596 67 P
1602 70 P
1642 93 P
1714 153 P
1780 209 P
1793 219 P
1820 235 P
1839 245 P
1846 247 P
1905 250 P
1912 247 P
1945 227 P
1951 221 P
1958 214 P
1971 200 P
1984 184 P
1991 176 P
2004 159 P
2017 142 P
2037 120 P
2043 113 P
2076 87 P
2083 84 P
2096 78 P
2103 76 P
2129 71 P
2169 73 P
2215 89 P
2280 123 P
2287 127 P
0.5 Sw
46 Sp
1 Sx
B
1319 134 M
1329 128 L
1339 123 L
1349 117 L
1358 112 L
1368 107 L
1378 102 L
1388 97 L
1397 92 L
1407 87 L
1417 83 L
1427 79 L
1437 75 L
1446 71 L
1456 68 L
1466 65 L
1476 62 L
1485 60 L
1495 58 L
1505 57 L
1515 56 L
1524 55 L
1534 55 L
1544 55 L
1554 56 L
1564 58 L
1573 60 L
1583 63 L
1593 66 L
1603 70 L
1612 75 L
1622 80 L
1632 86 L
1642 93 L
1652 100 L
1661 107 L
1671 115 L
1681 123 L
1691 132 L
1700 140 L
1710 149 L
1720 158 L
1730 167 L
1740 175 L
1749 184 L
1759 192 L
1769 200 L
1779 208 L
1788 215 L
1798 222 L
1808 229 L
1818 234 L
1828 240 L
1837 244 L
1847 248 L
1857 250 L
1867 252 L
1876 253 L
1886 253 L
1896 252 L
1906 249 L
1916 246 L
1925 241 L
1935 235 L
1945 227 L
1955 218 L
1964 207 L
1974 196 L
1984 184 L
1994 172 L
2004 159 L
2013 147 L
2023 135 L
2033 124 L
2043 114 L
2052 105 L
2062 97 L
2072 90 L
2082 84 L
2092 80 L
2101 76 L
2111 73 L
2121 72 L
2131 71 L
2140 70 L
2150 71 L
2160 72 L
2170 74 L
2180 76 L
2189 79 L
2199 82 L
2209 86 L
2219 91 L
2228 95 L
2238 100 L
2248 105 L
2258 110 L
2267 116 L
2277 121 L
2287 127 L
E
3 St
B
1319 102 M
2287 102 L
E
1 St
1 Sw
B
1912 51 M
1912 85 L
1920 76 L
E
B
1903 76 M
1912 85 L
E
1 Sd
(natural spline) 1155 271 0.5 T
Z

%%Trailer
W
%%Pages: 1