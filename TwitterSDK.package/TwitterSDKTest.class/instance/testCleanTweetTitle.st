tests-strings
testCleanTweetTitle
	self assert: 'brackendev on Twitter: "Says something"' cleanTweetTitle equals: 'Says something'.
	self assert: '"Says something"' cleanTweetTitle equals: '"Says something"'
