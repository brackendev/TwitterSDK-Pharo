TwitterSDK-Pharo
================

**Interact with the [Twitter API v1.1](https://developer.twitter.com/en/docs/twitter-api/v1) on Pharo.**

* [Pharo 8](https://www.pharo.org/) reference platform.

## Installation

1. Go to <https://developer.twitter.com/app/> to setup a consumer key, consumer secret, access token, and access token secret.
2. In a Playground, _Do it_:

```smalltalk
Metacello new 
  repository: 'github://brackendev/TwitterSDK-Pharo:v1.0.0/src';
  baseline: 'TwitterSDK';
  onConflict: [ :ex | ex useIncoming ];
  onUpgrade: [ :ex | ex useIncoming ];
  onDowngrade: [ :ex | ex useLoaded ];
  load.
```

## Example Usage

```smalltalk
twitterSDK := TwitterSDK createWithConsumerKey: CONSUMER_KEY consumerSecret: CONSUMER_SECRET accessToken: ACCESS_TOKEN accessTokenSecret: ACCESS_SECRET.
```

```smalltalk
"Follow @brackendev"
parameters := Dictionary newFrom: {'screen_name' -> 'brackendev'}.
twitterSDK postPathSegment: 'friendships/create.json' parameters: parameters.
```

```smalltalk
"Post a Tweet with an image"
"Note: The image resides in the Pharo image root directory"
mediaUpload := TwitterSDKTools mediaUploadFile: 'test.jpg' additionalOwners: nil twitterSDK: twitterSDK.
mediaID := (mediaUpload at: 'media_id') asString.
parameters := Dictionary newFrom: {('status' -> 'Test tweet'). ('media_ids' -> mediaID)}.
twitterSDK postPathSegment: 'statuses/update.json' parameters: parameters.

"...or"
TwitterSDKTools postTweetStatus: 'Test tweet' image: 'test.jpg' twitterSDK: twitterSDK.
```

```smalltalk
"Retrieve a Tweet"
parameters := Dictionary newFrom: {('id' -> '1178944243106242560')}.
tweet := (twitterSDK getPathSegment: 'statuses/lookup.json' parameters: parameters) last.

"...or"
tweet := TwitterSDKTools retrieveTweetForID: '1178944243106242560' twitterSDK: twitterSDK.
```

```smalltalk
"Retrieve a Tweet's text"
parameters := Dictionary newFrom: {('id' -> '1178944243106242560')}.
tweet := (twitterSDK getPathSegment: 'statuses/lookup.json' parameters: parameters) last.
text := tweet at: 'text'.

"...or"
text := TwitterSDKTools textForTweetID: '1178944243106242560' twitterSDK: twitterSDK.
```

```smalltalk
"Retrieve a Tweet's media URLs"
tweet := TwitterSDKTools retrieveTweetForID: '1206776380844838914' twitterSDK: twitterSDK.
mediaURLs := TwitterSDKTools mediaURLsForTweet: tweet.

"...and inspect it"
mediaURL := mediaURLs first.
(ImageReadWriter formFromStream: (ZnEasy get: mediaURL) contents readStream) asMorph inspect.
```

## TODO

- [ ] Support Pharo 9 (when stable)

## Author

Bracken Spencer

* [GitHub](https://www.github.com/brackendev)
* [LinkedIn](https://www.linkedin.com/in/brackenspencer/)
* [Twitter](https://twitter.com/brackendev)

## License

TwitterSDK-Pharo is released under the MIT license. See the LICENSE file for more info.
