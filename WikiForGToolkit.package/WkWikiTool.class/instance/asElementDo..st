api - converting
asElementDo: aOneArgBlock
	| anElement |
	anElement := WkWikiBrowser forWiki:wiki page: pageName.
	^ aOneArgBlock cull: anElement