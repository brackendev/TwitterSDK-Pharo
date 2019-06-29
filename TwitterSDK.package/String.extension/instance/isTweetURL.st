*TwitterSDK
isTweetURL
	^ self asLowercase matchesRegex: '^https?\:\/\/(|www\.)twitter\.com\/.*\/status\/\S+$'
