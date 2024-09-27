
proc print data=cert.input44(obs=10);
run;

data out;
	set cert.input44;
	drop bp_status weight_status smoking_status;
	length chol_status $ 15;
	if cholesterol ne . and cholesterol < 200 then chol_status='Safe';
	else if cholesterol ne . and cholesterol <= 239 then chol_status='High-Borderline';
	else if cholesterol ne . and cholesterol >= 240 then chol_status='High';
run;

proc contents data=out;
run;

proc freq data=out; 
	table chol_status;
run;

