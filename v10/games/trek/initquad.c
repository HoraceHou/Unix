# include	"trek.h"

/**
 **	initialize quadrant upon entering
 **/

initquad(f)
int	f;
{
	register int		i, j;
	int			rx, ry;
	int			nbases, nstars, nholes;
	register QUAD		*q;

	q = &Quad[Quadx][Quady];
	if (q->stars < 0)
		return;
	Nkling = q->qkling;
	nholes = q->holes;
	nbases = q->bases;
	nstars = q->stars;
	if (Nkling > 0 && !f)
	{
		printf("Condition RED\n");
		Status.cond = RED;
		if (!Damage[COMPUTER] && !Status.cloaked && !Damage[SHIELD] && !Status.shldup) {
			printf("Shields are down, %d%%.  ", effshld());
			if(getynpar("Do you want them up")==1)
				protect(0);
		}
	}
	for (i = 0; i < NSECTS; i++)
		for (j = 0; j < NSECTS; j++)
			Sect[i][j] = EMPTY;

	/* initialize Enterprise */
	Sect[Sectx][Secty] = Status.ship;

	/* initialize Klingons */
	for (i = 0; i < Nkling; i++)
	{
		sector(&rx, &ry);
		Sect[rx][ry] = KLINGON;
		Kling[i].x = rx;
		Kling[i].y = ry;
		Kling[i].power = Param.klingpwr;
	}
	compkldist(1);

	/* initialize star base */
	if (nbases > 0)
	{
		sector(&rx, &ry);
		Sect[rx][ry] = BASE;
		Starbase.x = rx;
		Starbase.y = ry;
	}

	/* initialize inhabited starsystem */
	if (q->systemname && (q->systemname&Q_GHOST)==0)
	{
		sector(&rx, &ry);
		Sect[rx][ry] = INHABIT;
		nstars =- 1;
	}

	/* initialize stars */
	for (i = 0; i < nstars; i++)
	{
		sector(&rx, &ry);
		Sect[rx][ry] = STAR;
	}

	/* initialise black holes */
	for (i = 0; i < nholes; i++)
	{
		sector(&rx, &ry);
		Sect[rx][ry] = BLACKHOLE;
	}
	Move.newquad = 1;
}


sector(x, y)
int	*x, *y;
{
	register int		i, j;

	do
	{
		i = ranf(NSECTS);
		j = ranf(NSECTS);
	} while (Sect[i][j] != EMPTY);
	*x = i;
	*y = j;
	return;
}
