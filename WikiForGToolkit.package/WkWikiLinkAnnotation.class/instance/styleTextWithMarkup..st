api - style
styleTextWithMarkup: aBlRope
	"First render the annotation without any particularities."
	super styleTextWithMarkup: aBlRope.
	"Then add styling to the page name, turning it into a link."
	self styleLinkInText: aBlRope.
	"Add the button representing the link."
	(self nodeStyler: aBlRope)
		name: (self parameters at: self constants nameParameterName);
		spawnTool: [ WkWikiTool new
						wiki: self wiki page: self createReferencedPage];
		linkButton.
	"Next, add the small triangle that opens the preview."
	self styleExpandingPreviewInText: aBlRope.