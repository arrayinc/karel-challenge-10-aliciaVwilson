/* File: Challenge-10.k
 ---------------------------
In this exercise, your job is to get Karel to create a checkerboard pattern of
beepers inside an empty rectangular world.

This problem has a nice decomposition structure along with some interesting
algorithmic issues. As you think about how you will solve the problem,
you should make sure your solution works with checkerboards that are different
in size from the standard 8×8 checkerboard shown in the example. Odd-sized
checkerboards are tricky, and you should make sure that your program generates
the following pattern in a 5×3 world.

Another special case you need to consider is that of a world that is only
one column wide or one row high.
*/

import "turns";

function CreateCheckerBoard(){
	while(notFacingNorth()){
			buildRowBeeperStart();
			if(noBeepersPresent()){
				putBeeper();
				moveToNewRow();
				buildRowNoBeeperStart();
			}
			moveToNewRow();
	}
}

function buildRowBeeperStart(){
	while(frontIsClear()){
		putBeeper();
		move();
		if(frontIsClear()){
			move();
		} 
	}
}



function moveToNewRow(){
	if(facingEast()){
		turnLeft();
	} 
	if(facingWest()){
		turnRight();
	}
	move();
	if(rightIsBlocked()){
		turnLeft();
	}
	if(leftIsBlocked()){
		turnRight();
	}
}

function buildRowNoBeeperStart(){
	while(frontIsClear()){
		move();
		putBeeper();
		if(frontIsClear()){
			move();
		}
	}
}



















/*
function BuildCheckerBoard(){
	while(frontIsClear()){
		buildOddRow();
		buildEvenRow();
	}
}

function buildOddRow(){
	while(frontIsClear()){
		putBeeper();
		move();
		if(frontIsBlocked()){
			if(facingEast()){
				turnLeft();
			} else {
				if(rightIsClear()){
					turnRight();
				}
			}
			if(frontIsClear()){
				move(); 
				putBeeper();
			}
			if(leftIsClear()){
				turnLeft();
				if(rightIsBlocked()){
					turnRight();
				}
			}	else {
				turnRight();
			}
			if(frontIsClear()){
				move();
			}
		}
		if(frontIsClear()){
		move();
		}
	}	
	if(noBeepersPresent()){
		putBeeper();
	}
	if(facingEast()){
		turnLeft();
	} else {
		if(rightIsClear()){
			turnRight();
		}
	}	
	if(frontIsClear()){	
		move();
	}
	if(rightIsBlocked()){
		turnLeft();
		if(rightIsBlocked()){
			turnRight();
		}
	} 
	if(frontIsClear()){
		turnRight();
	}
}

function buildEvenRow(){
	while(frontIsClear()){
		move();
		putBeeper();
		move();
	}
	if(facingEast()){
		turnLeft();
	} else {
		if(rightIsClear()){
			turnRight();
		}
	}
	if(frontIsClear()){
		move();
	}
	if(rightIsBlocked()){
		turnLeft();
	} else {
		turnRight();
	}	
}

*/