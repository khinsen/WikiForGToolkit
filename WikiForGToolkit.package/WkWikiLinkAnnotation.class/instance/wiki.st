accessing
wiki
	| storage |
	storage := self gtDocument storage.
	[ storage isWikiPage ifFalse: [ ^ nil ] ]
	on: MessageNotUnderstood do: [ ^ nil ].
	^ storage document wiki