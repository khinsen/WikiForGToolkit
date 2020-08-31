inspecting
gtPagesFor: aView
	<gtView>
	^ aView list
		title: 'Pages' translated;
		priority: -9;
		items: [ self wikiPageNames collect: [ :pn | self wikiPageNamed: pn ] ];
		itemText: [ :page | page name ]