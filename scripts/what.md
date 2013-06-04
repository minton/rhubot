#scripts/

This is where all your custom scripts belong. Scripts may be nested one level deep.

#Example

##Given Setup

```
scripts/
      |
      something.rb
      other.rb
      etc.rb
      nuke/
         |
         nuke.rb
         stuff.rb
```

###Running non-nested scripts

```
ruby rhubot.rb etc
```

###Will Execute

```scripts/etc.rb```

###Running nested scripts

```
ruby rhubot.rb nuke
```

###Will Execute

```scripts/nuke/nuke.rb```