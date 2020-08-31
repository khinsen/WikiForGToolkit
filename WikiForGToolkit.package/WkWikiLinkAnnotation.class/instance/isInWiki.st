testing
isInWiki
	"The annotation can be used in any Pillar document, but is effective only in a Wiki."
	| storage |
	storage := self gtDocument storage.
	[ ^ storage isWikiPage ]
	on: MessageNotUnderstood do: [ ^ false ]