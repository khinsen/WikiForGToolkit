!Class wikis

Class wikis store their #Main page in the class comment and all other pages in class-side methods that return the page text.

To add a wiki to a class, use the trait ${class:name=TWkClassWiki}$. This class represents the Wiki, not the class storing its pages.

To create a class wiki for testing, run
[[[
Object subclass: #WkWikiTestClass uses: TWkClassWiki
]]]

To remove the test class, run
[[[
WkWikiTestClass removeFromSystem
]]]

