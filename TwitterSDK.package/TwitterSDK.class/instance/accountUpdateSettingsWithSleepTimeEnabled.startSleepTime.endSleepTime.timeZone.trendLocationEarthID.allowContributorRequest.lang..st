Twitter account
accountUpdateSettingsWithSleepTimeEnabled: sleepTimeEnabled
	startSleepTime: startSleepTime
	endSleepTime: endSleepTime
	timeZone: timeZoneRails
	trendLocationEarthID: trendLocationEarthID
	allowContributorRequest: allowContributorRequest
	lang: lang

	"https://dev.twitter.com/rest/reference/post/account/settings"

	| url |
	url := TwitterSDKZnUrl create
		addPathSegment: 'account';
		addPathSegment: 'settings.json'.
	sleepTimeEnabled ifNotNil: [ url queryAt: 'sleep_time_enabled' put: sleepTimeEnabled ].
	startSleepTime ifNotNil: [ url queryAt: 'start_sleep_time' put: startSleepTime ].
	endSleepTime ifNotNil: [ url queryAt: 'end_sleep_time' put: endSleepTime ].
	timeZoneRails ifNotNil: [ url queryAt: 'time_zone' put: timeZoneRails ].
	trendLocationEarthID ifNotNil: [ url queryAt: 'trend_location_woeid' put: trendLocationEarthID ].
	allowContributorRequest ifNotNil: [ url queryAt: 'allow_contributor_request' put: allowContributorRequest ].
	lang ifNotNil: [ url queryAt: 'lang' put: lang ].
	^ self executePOSTRequestWithURL: url
