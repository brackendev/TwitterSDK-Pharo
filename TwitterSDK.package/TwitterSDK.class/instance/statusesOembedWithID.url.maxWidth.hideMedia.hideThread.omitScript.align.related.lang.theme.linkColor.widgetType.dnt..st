Twitter statuses
statusesOembedWithID: id url: url maxWidth: maxWidth hideMedia: hideMedia hideThread: hideThread omitScript: omitScript align: align related: related lang: lang theme: theme linkColor: linkColor widgetType: widgetType dnt: dnt
	"https://dev.twitter.com/rest/reference/get/statuses/oembed"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'statuses';
		addPathSegment: 'oembed.json'.
	u queryAt: 'tweet_mode' put: 'extended'.
	id ifNotNil: [ u queryAt: 'id' put: id ].
	url ifNotNil: [ u queryAt: 'url ' put: url ].
	maxWidth ifNotNil: [ u queryAt: 'maxwidth' put: maxWidth ].
	hideMedia ifNotNil: [ u queryAt: 'hide_media' put: hideMedia ].
	hideThread ifNotNil: [ u queryAt: 'hide_thread' put: hideThread ].
	omitScript ifNotNil: [ u queryAt: 'omit_script' put: omitScript ].
	align ifNotNil: [ u queryAt: 'align' put: align ].
	related ifNotNil: [ u queryAt: 'related' put: related ].
	lang ifNotNil: [ u queryAt: 'lang' put: lang ].
	theme ifNotNil: [ u queryAt: 'theme' put: theme ].
	linkColor ifNotNil: [ u queryAt: 'link_color' put: linkColor ].
	widgetType ifNotNil: [ u queryAt: 'widget_type' put: widgetType ].
	dnt ifNotNil: [ u queryAt: 'dnt' put: dnt ].
	^ self executeGETRequestWithURL: u
