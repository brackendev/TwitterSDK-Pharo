TwitterSDK-Pharo
================

**[Pharo](http://pharo.org/) Smalltalk implementation to interact with the [Twitter API](https://dev.twitter.com/rest/public) (version 1.1).**

* [Pharo 6.1](http://pharo.org/) reference platform.

## Installation

1. In a Pharo playground, evaluate:

    ```smalltalk
    Metacello new 
      repository: 'github://brackendev/TwitterSDK-Pharo';
      baseline: 'TwitterSDK';
      load.
    ConfigurationOfZincHTTPComponents project latestVersion load: 'SSO'.
    ```

2. Go to <https://apps.twitter.com/app/> to setup a consumer key, consumer secret, access token, and access token secret.

## Example Usage

In a Pharo playground, evaluate:

```smalltalk
twitterSDK := TwitterSDK createWithConsumerKey: CONSUMER_KEY consumerSecret: CONSUMER_SECRET accessToken: ACCESS_TOKEN accessTokenSecret: ACCESS_SECRET.

"Follow a user"
twitterSDK friendshipsCreateWithScreenName: 'pharoproject' userID: nil follow: true.

"Post a Tweet with an image"
response := twitterSDK mediaUploadFile: 'test.jpg' additionalOwners: nil.
mediaID := response at: 'media_id'.
twitterSDK statusesUpdateWithStatus: 'Test' inReplyToStatusID: nil possiblySensitive: nil lat: nil long: nil placeID: nil displayCoordinates: nil trimUser: nil mediaIDs: mediaID enableDMCommands: nil failDMCommands: nil.

"Post a Tweet with an image"
TwitterSDKTools postTweetStatus: 'Test' image: 'test.jpg' twitterSDK: twitterSDK.

"Retrieve a Tweet"
tweet := TwitterSDKTools retrieveTweetForID: 763742584380456960 twitterSDK: twitterSDK.

"Retrieve a Tweet's text"
text := TwitterSDKTools textForTweet: 763742584380456960.

"Retrieve a Tweet's media URLs"
mediaURLs := TwitterSDKTools mediaURLsForTweet: tweet.
```

Note: Replace `CONSUMER_KEY`, `CONSUMER_SECRET`, `ACCESS_TOKEN`, and `ACCESS_SECRET` with the information you received.

## Author

[brackendev](https://www.github.com/brackendev)

## License

TwitterSDK-Pharo is released under the MIT license. See the LICENSE file for more info.
