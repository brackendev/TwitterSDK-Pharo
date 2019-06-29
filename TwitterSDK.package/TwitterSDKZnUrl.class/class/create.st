private
create
	"Private use"

	^ self new
		scheme: #https;
		host: 'api.twitter.com';
		addPathSegment: '1.1';
		yourself
