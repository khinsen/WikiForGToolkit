wikiPages
wikiPageClassWiki
	"This method was automatically generated."
	<wikiPage: #ClassWiki>
	^ '!Class wikis

A class wiki is part of a class. Its main page is the class comment, and additional pages are stored in special class-side methods whose name starts with `wikiPage`. For example, this very page is stored in ${method:name=WkWikiDocumentation class >>#wikiPageClassWiki}$. The reason for this peculiar storage scheme is that all the Wiki contents are Pharo source code, and this stored in Git repositories along with any other code. 

The wiki page methods are created and updated by the Wiki browser, and it''s best not to modify them by other means.

To create a class Wiki, add the trait ${class:name=TWkClassWiki}$ to a class. Then add a wiki link to the class comment, and follow it in order to create a new page.
'