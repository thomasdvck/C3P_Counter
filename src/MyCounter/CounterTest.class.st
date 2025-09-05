Class {
	#name : 'CounterTest',
	#superclass : 'TestCase',
	#category : 'MyCounter',
	#package : 'MyCounter'
}

{ #category : 'tests' }
CounterTest >> testSetAndGetCounter [
	| c |
	c:= Counter new.
	c count: 2.
	self assert: c count equals: 2
]
