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

## Acknowledgements

* [Sven Van Caekenberghe](https://github.com/svenvc) and [contributors](https://github.com/svenvc/zinc/graphs/contributors) for the [Zinc HTTP Components](http://stfx.eu), the open-source Smalltalk framework to deal with the HTTP networking protocol.
* The [Pharo team](https://github.com/orgs/pharo-project/people) and [contributors](https://github.com/pharo-project/pharo/graphs/contributors) for [Pharo](http://pharo.org/), the pure object-oriented programming language and a powerful environment, focused on simplicity and immediate feedback.
* [Eliot Miranda](http://www.mirandabanda.org/cogblog/microbio/), the [OpenSmalltalk team](https://github.com/orgs/OpenSmalltalk/people), and [contributors](https://github.com/OpenSmalltalk/opensmalltalk-vm/graphs/contributors) for [OpenSmalltalk](https://github.com/OpenSmalltalk/opensmalltalk-vm) ([Cog](http://www.mirandabanda.org/cogblog/about-cog/)), the cross-platform virtual machine for Squeak, Pharo, Cuis, and Newspeak.

## Author

[brackendev](https://www.github.com/brackendev)

## License

TwitterSDK-Pharo is released under the MIT license. See the LICENSE file for more info.
