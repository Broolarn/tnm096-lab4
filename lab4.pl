
%   Blocks World

%  To run this example, first consult the planner you want to use
%  (strips.pl or idstrips.pl) and then consult the blocks.pl example
%  In the query window, run the goal:
%  ?- plan.



act( go(X,Y),                         
     [At(Shakey,X)), sameRoom(X,Y),onGround],  
     [At(Shakey,X)],                      
     [At(Shakey,Y)]                                    
     ).
	 
act( push(B,X,Y),                         
     [At(Shakey,X),At(B,X),sameRoom(X,Y),lightOn,onGround],  
     [At(Shakey,X),At(B,X)],                      
     [At(Shakey,Y),At(B,Y)]                                    
     ).
	 
act( ClimbUp(B),                         
     [At(Shakey,X),At(B,X),onGround],  
     [onGround],                      
     [onBox,lightOn]                                    
     ).	 
act( ClimbDown(B),                         
     [onBox],  
     [onBox],                      
     [onGround]                                    
     ).	 
act( turnOn(S),                         
     [onBox,At(Shakey,X), At(S,X),SwitchOff(S)],  
     [SwitchOff(S)],                      
     [SwitchOn(S)]                                    
     ).	 
act( turnOff(S),                         
     [onBox,At(Shakey,X), At(S,X),SwitchOn(S)],  
     [SwitchOn(S)],                      
     [SwitchOff(S)]                                    
     ).	 
	 






goal_state( [SwitchOff(S1),Box(B2,G2,room2) ]).

initial_state(
     [     
			Box(B1,B,room1),
			Box(B2,C,room2),
			Box(B3,D,room3),
			Box(B4,E,room4),
			Switch(A1,room1),
			Switch(A2,room2),
			Switch(A3,room3),
			Switch(A4,room4),
			SwitchOff(S2),
			SwitchOff(S3),
			SwitchOn(S1),
			SwitchOn(S4),
			Shakey(F,room3),
			sameRoom(room1,corridor),
			sameRoom(room2,corridor),
			sameRoom(room3,corridor),
			sameRoom(room4,corridor),
			Door(G1,room1,corridor),
			Door(G2,room2,corridor),
			Door(G3,room3,corridor),
			Door(G4,room4,corridor),
			At(Shakey,F),
			At(B1,B),
			At(B2,C),
			At(B3,D),
			At(B4,E),
			At(S1,H1),
			At(S2,H2),
			At(S3,H3),
			At(S4,H4),

     ]).
     