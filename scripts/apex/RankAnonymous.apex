RankHandler rk = new RankHandler();
string p1 = rk.rankPrize(1);
System.debug('P1 is ' + p1);

string p2 = rk.rankPrize(2);
System.debug('P2 is '+ p2);

string p5 = rk.rankPrize(5);
System.debug('P5 is '+ p5);

string p15 = rk.rankPrize(15);
System.debug('P15 is ' + p15);



RankHandler rkswitch = new RankHandler();
string p11 = rkswitch.rankPrizeSwitch(1);
System.debug('p11 is ' + p11);

string p22 = rkswitch.rankPrizeSwitch(2);
System.debug('p22 is ' + p22);

string p55 = rkswitch.rankPrizeSwitch(5);
System.debug('p55 is ' + p55);

string p155 = rkswitch.rankPrizeSwitch(15);
System.debug('p155 is ' + p155);