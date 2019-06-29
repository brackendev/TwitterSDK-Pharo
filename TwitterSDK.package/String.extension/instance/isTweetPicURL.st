*TwitterSDK
isTweetPicURL
	^ self asLowercase matchesRegex: '^https?\:\/\/pic\.twitter\.com\/\S+$'
