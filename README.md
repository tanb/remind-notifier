remind-notifier
==============

Send a notificaiton via OSX Reminder.app

```
$ remind-notifer "Hey" "Operation foo has finished"
```

## Requisites
OSX 10.10 =<

## Usage
```
$ remind-notifier [-d delay] [-l listname] title message
```

## Options
```
-d delay
   Enter a specific remind delay for seconds. Default 1.

-l listname
   Default is Notifications. Enter a specific reminder list name. If the reminder list is not found, it cause an error and exit.
```

## License
reminder-notifer is available under the MIT license.