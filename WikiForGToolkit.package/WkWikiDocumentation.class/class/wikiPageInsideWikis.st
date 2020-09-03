wikiPages
wikiPageInsideWikis
	"This method was automatically generated."
	<wikiPage: #InsideWikis>
	^ '!Inside wikis

Wikis are implemented as subclasses of ${class:name=WkAbstractWiki}$. See ${wikiPage:name=ImplementingWikis}$ for the details.

The main user interface element is ${class:name=WkWikiBrowser}$. It is a ${class:name=BlElement}$ and can thus be integrated into larger user interface assemblies.

The class ${class:name=WkWikiLinkAnnotation}$ represents wiki links in a parsed Pillar document (see ${class:name=PRDocument}$ and subclasses). It turns the annotation markup into an active link and adds the button that is displayed in the usual markup-free display of text. See in particular ${method:name=WkWikiLinkAnnotation>>#styleLinkInText:}$.

Finally, ${class:name=WkWikiTool}$ is a small wrapper around ${class:name=WkWikiBrowser}$ that acts as a tool for GToolkit, i.e. it displays a new pane containing a browser. See the button action in ${method:name=WkWikiLinkAnnotation>>#styleTextWithMarkup:}$ for an example of how it is used.
'