TwitterSDK-Pharo
================

**Interact with the [Twitter API](https://developer.twitter.com/en/docs) on Pharo.**

* [Pharo 8](https://www.pharo.org/) reference platform.

## Installation

1. Go to <https://developer.twitter.com/app/> to setup a consumer key, consumer secret, access token, and access token secret.
2. Evaluate in a Playground:

```smalltalk
Metacello new 
  repository: 'github://brackendev/TwitterSDK-Pharo';
  baseline: 'TwitterSDK';
  onConflict: [ :ex | ex useIncoming ];
  onUpgrade: [ :ex | ex useIncoming ];
  onDowngrade: [ :ex | ex useLoaded ];
  ignoreImage;
  load.
```

3. Then evaluate:

```smalltalk
ConfigurationOfZincHTTPComponents project latestVersion load: 'SSO'.
```

## Example Usage

Evaluate in a Pharo playground:

```smalltalk
twitterSDK := TwitterSDK createWithConsumerKey: CONSUMER_KEY consumerSecret: CONSUMER_SECRET accessToken: ACCESS_TOKEN accessTokenSecret: ACCESS_SECRET.

"Follow @brackendev"
twitterSDK postPathSegment: 'friendships/create.json' parameters: (Dictionary newFrom: {'screen_name' -> 'brackendev'}).

"Post a Tweet with an image"
"Note: The image resides in the Pharo image root directory"
mediaUpload := TwitterSDKTools mediaUploadFile: 'test.jpg' additionalOwners: nil twitterSDK: twitterSDK.
mediaID := (mediaUpload at: 'media_id') asString.
twitterSDK postPathSegment: 'statuses/update.json' parameters: (Dictionary newFrom: {('status' -> 'Test tweet'). ('media_ids' -> mediaID)}).
"...or"
TwitterSDKTools postTweetStatus: 'Test tweet' image: 'test.jpg' twitterSDK: twitterSDK.

"Retrieve a Tweet"
tweet := (twitterSDK getPathSegment: 'statuses/lookup.json' parameters: (Dictionary newFrom: {('id' -> '1178944243106242560')})) last.
"...or"
tweet := TwitterSDKTools retrieveTweetForID: '1178944243106242560' twitterSDK: twitterSDK.

"Retrieve a Tweet's text"
text := TwitterSDKTools textForTweetID: '1178944243106242560' twitterSDK: twitterSDK.

"Retrieve a Tweet's media URLs"
tweet := TwitterSDKTools retrieveTweetForID: '1206776380844838914' twitterSDK: twitterSDK.
mediaURLs := TwitterSDKTools mediaURLsForTweet: tweet.
"...and inspect it"
mediaURL := mediaURLs first.
(ImageReadWriter formFromStream: (ZnEasy get: mediaURL) contents readStream) asMorph inspect.
```

## Author

[brackendev](https://www.github.com/brackendev)

## License

TwitterSDK-Pharo is released under the MIT license. See the LICENSE file for more info.
