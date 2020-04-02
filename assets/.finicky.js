const regex = /^https?:\/\/twitter\.com\/(?:#!\/)?(\w+)\/status(?:es)?\/(\d+)(?:\/.*)?$/

module.exports = {
    defaultBrowser: 'Safari',
    rewrite: [{
        match: ({urlString}) => {
            const matches = urlString.match(regex);
            finicky.log(JSON.stringify(matches, null, 2))
            return matches && matches[2];
        },
        url: ({urlString}) => {
            const [_, user, statusId] = urlString.match(regex);
            return `tweetbot://${user}/status/${statusId}`;
        }
    },{
        match: ({ url }) => (url.search.includes("utm_")),
        url({ url }) {
          const search = url.search.split('&').filter(part => !part.startsWith("utm_"));
          return {
            ...url,
            search: search.join('&')
          }
        }
      }],
    handlers: [{
        match: /^https?:\/\/(lolcathost|localhost|127.0.0.1)/,
        browser: 'Google Chrome Canary'
    }, {
        match: ({url}) => url.protocol === "tweetbot",
        browser: "com.tapbots.Tweetbot3Mac"
    }, {
      match: ({sourceBundleIdentifier}) => (sourceBundleIdentifier === 'info.colloquy'),
      browser: 'Firefox'
    }, {
        // Open google.com and *.google.com urls in Google Chrome
        match: finicky.matchHostnames([
          'google.com', // match google.com domain as string (to make regular expression less complicated)
          /.*\.google.com$/ // match all google.com subdomains
        ]),
        browser: 'Google Chrome'
    }, {
        match: finicky.matchHostnames([
          /.*\.schibsted.media$/
        ]),
        browser: 'Google Chrome'
    }, {
      match: ({url}) => url.protocol === 'tweetbot',
      browser: 'com.tapbots.Tweetbot3Mac'
    }, {
        match: ({urlString}) => urlString.indexOf('.onion') > 0,
        browser: 'Tor Browser'
    }, {
        match: ({url}) => {
            return url.host === 'trello.com';
        },
        browser: 'Google Chrome'
    }, {
        match: ({url}) => {
            return url.host === 'facebook.com';
        },
        browser: 'Firefox'
    }, {
        match: ({keys}) => keys.option,
        browser: 'Google Chrome'
    }, {
        match: finicky.matchDomains("open.spotify.com"),
        browser: "Spotify"
    }]
};
