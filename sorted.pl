issorted([]).
issorted([_]).
issorted([X,Y|T]):-X=<Y,issorted([Y|T]).