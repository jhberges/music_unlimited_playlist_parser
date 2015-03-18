# music_unlimited_playlist_parser
Small Elixir utility to convert Sony Music Unlimited JSON playlists into text format used (among others) by [Ivy](http://www.ivyishere.org/ivy).

# Usage
## Setup
1. Clone the repo

## Build the escript

    $ mix escript.build

## Grab the JSON

Log into Sony Music unlimited and pop open the "developer tools" in your browser.
Set the tool to show "network traffic".

Navigate to the playlist you want, and notice the request to an endpoint ```https:/......../tracks```

This is the one you want.

Now, copy this URL and paste it into a new browser window - but before you hit ```[enter]```, modify the ```startIndex``` and ```endIndex``` parameters to match the entire size of your playlist.

Hit ```[enter]``` and save the JSON to a file on your disk.

## Convert some JSON

    $ ./music_unlimited_playlist_parser <input json> <output text>

## Import!

Smack the contents of the file onto Ivy, and cross your fingers hoping Spotify carries all your tunes.
