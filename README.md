#Rhubot

Make Hubot play nice with Ruby. 

rhubot allows you to call arbitrary, long-running ruby scripts from [campfire](http://campfirenow.com/) via [hubot](http://hubot.github.com/). Once the script is finished executing it will post its result back into the campfire room where it was called.

##Why?

I dig coffeescript but I dig ruby more.

#Setup

##Campfire Setup 

Ensure you have the [rhubot campfire script](https://raw.github.com/minton/rhubot/master/coffee/rhubot.coffee) and that the following configuration options are defined for hubot.

####RHUBOT_PATH

This is the path to where you installed rhubot. Eg, `/etc/rhubot`

####HUBOT_URL

This is the URL to the Hubot HTTP router. Eg, `http://192.168.0.0:8080`

##Install rhubot

```base
cd /etc/
git clone git@github.com:minton/rhubot.git
bundle install
```

##Install your wares

Put your scripts into `scripts/`. See [here](https://github.com/minton/rhubot/blob/master/scripts/what.md) for more details.

#Karma

[![endorse](https://api.coderwall.com/minton/endorsecount.png)](https://coderwall.com/minton) or [follow me](https://twitter.com/intent/follow?screen_name=mcminton).
