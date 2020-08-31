accessing
evaluationReceiver
	"Return an object that is used as a receiver (self) in a codeblock (code snippet) evalution"
	<return: #Object>
	^ self container wikiEvaluationReceiverForPage: name