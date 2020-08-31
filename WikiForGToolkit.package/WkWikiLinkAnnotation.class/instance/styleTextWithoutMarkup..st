api - style
styleTextWithoutMarkup: aBlRope
	"First render the full text with markup."
	self styleTextWithMarkup: aBlRope.
	"Then hide the markup."
	super styleTextWithoutMarkup: aBlRope.
	"Make the whole annotation disappear if the cursor is far away."
	(self nodeStyler: aBlRope) autoHideNode.
