Twitter account
accountRemovePofileBanner
	"https://dev.twitter.com/rest/reference/post/account/remove_profile_banner"

	^ self
		executePOSTRequestWithURL:
			(TwitterSDKZnUrl create
				addPathSegment: 'account';
				addPathSegment: 'remove_profile_banner.json')
