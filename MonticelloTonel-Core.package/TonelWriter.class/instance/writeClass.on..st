writing
writeClass: aClassDefinition on: aStream
	[ self writeClassDefinition: aClassDefinition on: aStream.
	self writeClassSideMethodDefinitions: aClassDefinition on: aStream.
	self writeInstanceSideMethodDefinitions: aClassDefinition on: aStream ]
		on: TonelShouldIgnore
		do: [ :e | self traceCr: 'ignoring: ' , aClassDefinition asString ]