all: sintesis 

sintesis: StateMachine.ys
	yosys StateMachine.ys
	sed -i 's/StateMachine/StateMachine_estruct/' StateMachine_estruct.v
