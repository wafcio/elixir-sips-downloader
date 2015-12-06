[![Version](http://allthebadges.io/wafcio/elixir-sips-downloader/badge_fury.png)](http://allthebadges.io/wafcio/elixir-sips-downloader/badge_fury)
[![Dependencies](http://allthebadges.io/wafcio/elixir-sips-downloader/gemnasium.png)](http://allthebadges.io/wafcio/elixir-sips-downloader/gemnasium)
[![Build Status](http://allthebadges.io/wafcio/elixir-sips-downloader/travis.png)](http://allthebadges.io/wafcio/elixir-sips-downloader/travis)
[![Coverage](http://allthebadges.io/wafcio/elixir-sips-downloader/coveralls.png)](http://allthebadges.io/wafcio/elixir-sips-downloader/coveralls)
[![Code Climate](http://allthebadges.io/wafcio/elixir-sips-downloader/code_climate.png)](http://allthebadges.io/wafcio/elixir-sips-downloader/code_climate)

Elixir Sips Downloader
=====================

[Elixir Sips][elixir-sips] is a great series of screencasts by
[Josh Adams][josh-adams]. You should totally check it out if you don't already
know it!

There's only one problem with Elixir Sips, in my opinion: there's no way to
watch it via streaming. One can only download episodes, which soon becomes
tedious.

Enters Elixir Sips Downloader! It downloads all episodes and attachments,
organizes them for later use and keeps an easy to use index of episodes.

## Alternative

RubyTapas provides an official way to download expisodes automatically using iTunes, open the [episode list](http://elixirsips.dpdcart.com/subscriber/content) and click on the iTunes button on the top right to subscribe.

Installation
------------

```bash
$ git clone git@github.com:wafcio/elixir-sips-downloader.git
```

Usage
-----

```bash
$ cd elixir-sips-downloader
$ bin/elixir-sips-downloader download -e <email> -p <password> -d <download_path>
```

If you prefer, you can pre-configure, in that way you don't need to authenticate
every download.

```bash
$ cd elixir-sips-downloader
$ bin/elixir-spis-downloader configure -e <email> -p <password> -d <download_path>
```

One other alternative is to pass/export env vars:

```bash
$ export ELIXIR_SIPS_DOWNLOADER_EMAIL=someone@example.com
$ export ELIXIR_SIPS_DOWNLOADER_PASSWORD=123
$ export ELIXIR_SIPS_DOWNLOADER_DOWNLOAD_PATH=.

$ cd elixir-sips-downloader
$ bin/elixir-sips-downloader download
```

Warning
-------

Except for a few episodes, Elixir Sips is a paid screencast. Therefore, assert
that you don't redistribute the downloaded material. Elixir Sips Downloader is
only an utility tool and doesn't substitute the subscription.

You should do no evil!

Thanks
------

Thanks Josh Adams for putting all this great material out the door!

I learn a lot from you.

[elixir-sips]: http://elixirsips.com
[josh-adams]: https://plus.google.com/+JoshAdams
