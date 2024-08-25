In	the	conventional	shift-and-add	multiplication,	for	n-bit	multiplication,	we	iterate	n	times.	
Add	either	0	or	the	multiplicand	to	the	2n-bit	par@al	product	(depending	on	the	next	bit	of	the	multiplier).	
Shift	the	2n-bit	parallel	product	to	the	right.	
Essentially	we	need	n	addi3ons	and	n	shift	opera3ons.	
Booth’s	algorithm	is	an	improvement	whereby	we	can	avoid	the	additions	whenever	consecutive	0’s	or	1’s	are	detected	in	the	multiplier.	
It makes	the	process	faster.	
We	inspect	two	bits	of	the	multiplier	(Qi,	Qi-1)	at	a	time.		
– If	the	bits	are	same	(00	or	11),	we	only	shin	the	parallel	product.	
– If	the	bits	are	01,	we	do	an	addition	and	then	shift.	
– If	the	bits	are	10,	we	do	a	subtraction	and	then	shift.	
• Q	-1	is	assumed	to	be	equal	to	0.	
• Significantly	reduces	the	number	of	additions	/	subtractions.	
