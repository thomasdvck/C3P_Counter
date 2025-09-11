Class {
	#name : 'CounterTest',
	#superclass : 'TestCase',
	#category : 'MyCounter',
	#package : 'MyCounter'
}

{ #category : 'tests' }
CounterTest >> testAlternanteCreationMethod [
	self assert: ((Counter startingAt: 19)increment; count) equals: 20
]

{ #category : 'tests' }
CounterTest >> testCounterStartingAt5 [
	self assert: (Counter startingAt: 5) count equals:5
]

{ #category : 'tests' }
CounterTest >> testCounterWellInitialized [
	self assert: (Counter new increment ; increment; count) equals:2
]

{ #category : 'tests' }
CounterTest >> testDecrementCounter [
	| c |
	c:= Counter new.
	c count: 3; decrement; decrement.
	self assert: c count equals: 1
]

{ #category : 'tests' }
CounterTest >> testIncrementCounter [
	| c |
	c:= Counter new.
	c count: 0; increment; increment.
	self assert: c count equals: 2
]

{ #category : 'tests' }
CounterTest >> testInitialize [
	self assert: Counter new count equals:0
]

{ #category : 'tests' }
CounterTest >> testSetAndGetCounter [
	| c |
	c:= Counter new.
	c count: 2.
	self assert: c count equals: 2
]
