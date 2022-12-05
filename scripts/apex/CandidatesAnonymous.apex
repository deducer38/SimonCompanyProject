Candidates.CompanyName = 'softinnovas';
Candidates.printCandidateInfo();
System.debug('START Count of candidates ' + Candidates.countCandidates);

Candidates c1 = new Candidates();
c1.Name = 'Jerry';
c1.Gender = 'Male';
c1.printCandidate();

Candidates c2 = new Candidates();
c2.Name = 'Elena';
c2.Gender = 'Female';
c2.printCandidate();

// for mac: opt + shift + drag mouse 

Candidates.CompanyName = 'Vendelay Industries';
Candidates c3 = new Candidates();
c3.Name = 'George';
c3.Gender = 'Male';
c3.printCandidate();

System.debug('---------');
c1.printCandidate();
System.debug('---------');
c2.printCandidate();

Candidates.printCandidateInfo();

System.debug('END Count of candidates ' + Candidates.countCandidates);
