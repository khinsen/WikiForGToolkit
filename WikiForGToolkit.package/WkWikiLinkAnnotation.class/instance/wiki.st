accessing
wiki
	| storage |
	storage := self gtDocument storage.
	[ ^ storage wiki ]
	on: MessageNotUnderstood do: [ ^ nil ].