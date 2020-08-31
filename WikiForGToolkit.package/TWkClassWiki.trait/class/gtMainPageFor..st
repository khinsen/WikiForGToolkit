inspecting
gtMainPageFor: aView
	<gtView>
	| aDocument |
	aDocument := GtDocument new
							strategy: (WkWikiPageStorageStrategy new container: self; name: #Main);
							read.
	^ (aDocument gtTextFor: aView)
		title: 'Main page';
		priority: -10;
		action: [ :anAction | 
			aDocument gtSaveActionFor: anAction ];
		action: [ :anAction | 
			aDocument gtShowMarkupActionFor: anAction ]