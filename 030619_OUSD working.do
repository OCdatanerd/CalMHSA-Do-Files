
** Label Variables
forv i = 1/5 {
	label variable s_nr`i' "Norms & Rules"
	}

forv i = 1/6 {
	label variable s_s`i' "P,S, & E Security"
	}

forv i = 1/5 {
	label variable s_cb`i' "Cyber-Bullying"
	}

forv i = 1/7 {
	label variable tl_sl`i' "Support for Learning"
	}
	
forv i = 1/7 {
	label variable tl_sc`i' "S & C Learning"
	}	
	
forv i = 1/5 {
	label variable r_rd`i' "Respect for Diversity"
	}	

forv i = 1/5 {
	label variable r_aa`i' "Adult to Adult"
	}		
	
forv i = 1/7 {
	label variable r_as`i' "Adult to Student"
	}		
	
forv i = 1/5 {
	label variable r_ss`i' "Student to Student"
	}		
	
forv i = 1/6 {
	label variable ie_sc`i' "Connect & Engage"
	}		

forv i = 1/5 {
	label variable ie_ps`i' "Physical Surroundings"
	}	
	
	forv i = 1/11 {
	label variable b_as`i' "Anxiety & Stress"
	}
	
forv i = 1/13 {
	label variable b_d`i' "Depression"
	}	

** Reverse Code
	
forv i = 1/6 {
	replace s_s`i'= 6-s_s`i'
	}

forv i = 1/5 {
	replace s_cb`i'= 6-s_cb`i'
	}

forv i = 2/3 {
	replace r_rd`i'= 6-r_rd`i'
	}

forv i = 1/11 {
	replace b_as`i'= 5-b_as`i'
	}
	
forv i = 1/13 {
	replace b_d`i'= 5-b_d`i'
	}
	


** Create Sub-scales

sumscale, f1(s_nr1-s_nr5) f2(s_s1-s_s6) f3(s_cb1-s_cb5) f4(tl_sl1-tl_sl7) ///
 f5(tl_sc1-tl_sc7) f6(r_rd1-r_rd5) f7(r_aa1-r_aa5) f8(r_as1-r_as7) f9(r_ss1-r_ss5) ///
 f10(ie_sc1-ie_sc6) f11(ie_ps1-ie_ps5) f12(b_as1-b_as11) f13(b_d1-b_d13)

rename Factor1_average S_nr
rename Factor2_average S_s
rename Factor3_average S_cb
rename Factor4_average TL_sl
rename Factor5_average TL_sc
rename Factor6_average R_rd
rename Factor7_average R_aa
rename Factor8_average R_as
rename Factor9_average R_ss
rename Factor10_average IE_sc
rename Factor11_average IE_ps
rename Factor12_average B_as
rename Factor13_average B_d

order S_nr-B_d, after(persist)





** Clean
replace grade = 6 in 48
replace grade = 6 in 128
drop in 217
drop in 226
replace grade = 10 in 259
replace grade = 8 in 456
replace grade = 8 in 549
replace grade = 8 in 648
replace grade = 8 in 821
replace grade = 8 in 833
replace grade = 8 in 886
replace grade = 10 in 1269
replace grade = 10 in 1326
replace grade = 6 in 1481
replace grade = 6 in 1457
replace grade = 5 in 1766
replace grade = 5 in 1783
replace grade = 6 in 1896
replace grade = 6 in 1877
replace grade = 6 in 2039
replace grade = 6 in 2053
replace grade = 6 in 2059
replace grade = 6 in 2086
replace grade = 10 in 2147
replace grade = 10 in 2168
replace grade = 10 in 2228
replace grade = 10 in 2234
replace grade = 10 in 2250
replace grade = 10 in 2293
replace grade = 10 in 2305
replace grade = 10 in 2306
replace grade = 10 in 2310
replace grade = 10 in 2346
replace grade = 10 in 2373
replace grade = 10 in 2428
replace grade = 6 in 2554
replace grade = 8 in 2676
replace grade = 8 in 2695
replace grade = 8 in 2704
replace grade = 8 in 2758
replace grade = 11 in 2849
replace grade = 11 in 2854
replace grade = 11 in 2855
drop in 2867
replace grade = 6 in 3474
replace grade = 10 in 3692
replace grade = 10 in 3923
replace grade = 10 in 4019
replace grade = 8 in 4221
replace grade = 8 in 4226
replace grade = 8 in 4275
replace s_nr1-b_d13= s_nr1-b_d13[_n+1] if s_nr1-b_d13==.
