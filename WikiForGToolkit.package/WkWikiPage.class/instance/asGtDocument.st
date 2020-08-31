inspecting
asGtDocument
	^ GtDocument new
					 strategy: (WkWikiPageStorageStrategy new container: wiki; name: name);
					 read