finicky.setDefaultBrowser('com.apple.Safari');

// Open local urls in Canary
finicky.onUrl((url, opts) => {
    if (url.match(/^https?:\/\/(lolcathost|localhost|127.0.0.1)/)){
        return { bundleIdentifier: 'com.google.Chrome.canary' }
    }
});

// Open .onion-links in the Tor-browser (Veeery fuzzy.)
finicky.onUrl((url, opts) => {
    if (url.indexOf('.onion') >= 0){
        return { bundleIdentifier: 'org.torproject.torbrowser' }
    }
});

// Always open links from Mail in Safari
finicky.onUrl(function(url, opts) {
  var sourceApplication = opts && opts.sourceBundleIdentifier;
  if (sourceApplication === "info.colloquy") {
    return {
      bundleIdentifier: "org.mozilla.firefox"
    };
  }
});

// Open Twitter links in Tweetbot
finicky.onUrl(function(url, opts) {
    var matches = url.match(/^https?:\/\/twitter\.com\/(?:#!\/)?(\w+)\/status(?:es)?\/(\d+)(?:\/.*)?$/);
    if (matches && matches[2]) {
	const user = matches[1];
        const statusId = matches[2];
        return {
            url: `tweetbot://${user}/status/${statusId}`,
            bundleIdentifier: 'com.tapbots.Tweetbot3Mac'
        }
    }
});
