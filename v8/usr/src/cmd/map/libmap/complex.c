/*complex divide, defensive against overflow from
 *	* and /, but not from + and -
 *	assumes underflow yields 0.0
 *	uses identities:
 *	(a + bi)/(c + di) = ((a + bd/c) + (b - ad/c)i)/(c + dd/c)
 *	(a + bi)/(c + di) = (b - ai)/(d - ci)
*/
cdiv(a,b,c,d,u,v)
double a,b,c,d;
double *u,*v;
{
	double r,t;
	double fabs();
	if(fabs(c)<fabs(d)) {
		t = -c; c = d; d = t;
		t = -a; a = b; b = t;
	}
	r = d/c;
	t = c + r*d;
	*u = (a + r*b)/t;
	*v = (b - r*a)/t;
}

cmul(c1,c2,d1,d2,e1,e2)
double c1,c2,d1,d2;
double *e1,*e2;
{
	*e1 = c1*d1 - c2*d2;
	*e2 = c1*d2 + c2*d1;
}

csq(c1,c2,e1,e2)
double c1,c2;
double *e1,*e2;
{
	*e1 = c1*c1 - c2*c2;
	*e2 = c1*c2*2;
}

/* complex square root
 *	assumes underflow yields 0.0
 *	uses these identities:
 *	sqrt(x+_iy) = sqrt(r(cos(t)+_isin(t))
 *	           = sqrt(r)(cos(t/2)+_isin(t/2))
 *	cos(t/2) = sin(t)/2sin(t/2) = sqrt((1+cos(t)/2)
 *	sin(t/2) = sin(t)/2cos(t/2) = sqrt((1-cos(t)/2)
*/
csqrt(c1,c2,e1,e2)
double c1,c2;
double *e1,*e2;
{
	double r,s;
	double x,y;
	double sqrt(), fabs();
	x = fabs(c1);
	y = fabs(c2);
	if(x>=y) {
		if(x==0) {
			*e1 = *e2 = 0;
			return;
		}
		r = x;
		s = y/x;
	} else {
		r = y;
		s = x/y;
	}
	r *= sqrt(1+ s*s);
	if(c1>0) {
		*e1 = sqrt((r+c1)/2);
		*e2 = c2/(2* *e1);
	} else {
		*e2 = sqrt((r-c1)/2);
		if(c2<0)
			*e2 = -*e2;
		*e1 = c2/(2* *e2);
	}
}
