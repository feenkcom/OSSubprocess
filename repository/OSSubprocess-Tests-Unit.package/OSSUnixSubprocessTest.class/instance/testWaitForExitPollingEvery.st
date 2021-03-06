tests - wait
testWaitForExitPollingEvery
	| command | 
	
	command := self newCommand 
					command: '/bin/sleep';
					arguments: {'3'}.
	
	command run. 
	self assert: command pid > 0.
	self assert: [ command waitForExitPollingEvery: (Delay forSeconds: 1) ] timeToRun asSeconds >= 2.
	self assert: command exitStatusInterpreter exitStatus equals: 0. 