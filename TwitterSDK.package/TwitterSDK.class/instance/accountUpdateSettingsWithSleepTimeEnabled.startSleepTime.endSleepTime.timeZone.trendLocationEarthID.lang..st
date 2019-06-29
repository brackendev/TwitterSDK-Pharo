Twitter account
accountUpdateSettingsWithSleepTimeEnabled: sleepTimeEnabled
	startSleepTime: startSleepTime
	endSleepTime: endSleepTime
	timeZone: timeZoneRails
	trendLocationEarthID: trendLocationEarthID
	lang: lang

	"https://dev.twitter.com/rest/reference/post/account/settings"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'account';
		addPathSegment: 'settings.json'.
	sleepTimeEnabled ifNotNil: [ u queryAt: 'sleep_time_enabled' put: sleepTimeEnabled ].
	startSleepTime ifNotNil: [ u queryAt: 'start_sleep_time' put: startSleepTime ].
	endSleepTime ifNotNil: [ u queryAt: 'end_sleep_time' put: endSleepTime ].
	timeZoneRails ifNotNil: [ u queryAt: 'time_zone' put: timeZoneRails ].
	trendLocationEarthID ifNotNil: [ u queryAt: 'trend_location_woeid' put: trendLocationEarthID ].
	lang ifNotNil: [ u queryAt: 'lang' put: lang ].
	^ self executePOSTRequestWithURL: u
