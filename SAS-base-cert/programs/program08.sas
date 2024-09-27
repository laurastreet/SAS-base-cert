proc print data=cert.input08a(obs=5);
run;

proc sort data=cert.input08a out=sortedA;
	by id;
run;

proc sort data=cert.input08b out=sortedB;
	by id;
run;

data results.match08 results.nomatch08(drop=ex:);
	merge sortedA(in=inA) sortedB(in=inB);
	by id;
	if inA and inB then 
		output results.match08;
	else
		output results.nomatch08;
run;
	