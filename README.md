# appium_ruby_sample

Appium + Ruby + Page object pattern sample.


## Installation

### brew

```
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
$ brew tap homebrew/cask-versions
```

see also: 
- https://brew.sh/index_ja


### anyenv

```
$ brew install anyenv
$ anyenv install --init
$ anyenv init
```

see also: 
- https://github.com/anyenv/anyenv

### rbenv

```
$ anyenv install rbenv
$ (exec $SHELL -l)
$ rbenv install -v `cat .ruby-version`
$ gem install bundler
```

see also: 
- https://www.ruby-lang.org/ja/
- https://bundler.io/

### nodenv

```
$ anyenv install nodenv
$ (exec $SHELL -l)
$ nodenv install -v `cat .node-version`
```

see also:
- https://nodejs.org/ja/

### jenv

Need Java 8 for appium

```
$ brew tap AdoptOpenJDK/openjdk
$ brew cask install adoptopenjdk8 
```

Manage Java by jenv.

```
$ anyenv install jenv
$ (exec $SHELL -l)
$ jenv add $(/usr/libexec/java_home -v 1.8)
```

see also:
- https://github.com/jenv/jenv


### Android Studio

```
$ brew cask install android-studio
```

And open Android Studio and install SDK, Emulator etc.

### Xcode

Install from https://apps.apple.com/jp/app/xcode/id497799835?mt=12

### appium

```
$ npm install
```

### Others
```
$ brew install ffmpeg
$ brew install carthage
$ brew install libiconv libxml2 libxslt
$ brew link --force libiconv libxml2 libxslt
$ gem install nokogiri -v 1.6.3.1 -- --with-xslt-dir=/usr/local/opt/libxslt --with-iconv-dir=/usr/local/opt/libiconv --with-xml2-config=/usr/local/opt/libxml2/bin/xml2-config --with-xslt-config=/usr/local/opt/libxslt/bin/xslt-config
```

### Export environmental variables

It's good to set these value to `.bash_profile` etc.

```
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
export ANDROID_HOME=$HOME/Library/Android/sdk
PATH=$PATH:$ANDROID_HOME/platform-tools
PATH=$PATH:$ANDROID_HOME/build-tools/29.0.2
PATH=$PATH:$ANDROID_HOME/tools
export PATH
```

### Check your environment

If you need other library, please check this command and install it.

```
$ ./node_modules/appium-doctor/appium-doctor.js --ios
$ ./node_modules/appium-doctor/appium-doctor.js --android
```

### Execute sample_spec.rb

Prepare the Emulator/Simlator or real device and run appium like this:

```
$ ./node_modules/.bin/appium
```

Run test:

```
$ git clone https://github.com/daipresents/appium_ruby_sample.git
$ cd appium_ruby_sample
$ bundle install
$ bundle exec rspec spec/sample_spec.rb
```
