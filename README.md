TwitterSDK-Pharo
================

**Interact with the [Twitter API v1.1](https://developer.twitter.com/en/docs/twitter-api/v1) on Pharo.**

* [Pharo 10](https://www.pharo.org/) reference platform.

## Installation

1. If you do not have a Twitter app set up:
    1. Sign in to Twitter and go to <https://developer.twitter.com/> to create an app.
    2. Retrieve the app API key, API key secret, access token, and access token secret.
3. Load this project in Pharo. In a Playground, _Do it_:

```smalltalk
Metacello new 
  repository: 'github://brackendev/TwitterSDK-Pharo/src';
  baseline: 'TwitterSDK';
  load.
```

## Example Usage

```smalltalk
twitterSDK := TwitterSDK createWithAPIKey: API_KEY apiKeySecret: API_KEY_SECRET accessToken: ACCESS_TOKEN accessTokenSecret: ACCESS_SECRET.
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

## Author

Bracken Spencer

* [GitHub](https://www.github.com/brackendev)
* [LinkedIn](https://www.linkedin.com/in/brackenspencer/)
* [Twitter](https://twitter.com/brackendev)

## License

TwitterSDK-Pharo is released under the MIT license. See the LICENSE file for more info.
