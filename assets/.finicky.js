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
