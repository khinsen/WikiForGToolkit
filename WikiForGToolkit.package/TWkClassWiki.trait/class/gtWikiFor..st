inspecting
gtWikiFor: aView
	<gtView>
	| aWikiBrowser |
	aWikiBrowser := WkWikiBrowser forWiki: self page: #Main.
	^ (aWikiBrowser gtLiveFor: aView)
		title: 'Wiki';
		priority: -10;
		yourself