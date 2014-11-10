remind-notifier
==============

Send a notificaiton via OSX Reminders.app

```
$ remind-notifier "Hey" "Operation foo has finished"
```
![foo-has-finished](https://cloud.githubusercontent.com/assets/291175/4974543/20f4587e-6910-11e4-86c1-f6e0b8c8a690.png)

## Requisites
OSX 10.10 =<

## Installation
### Installing with Homebrew
```
$ brew tap tanb/tail
$ brew install remind-notifier
```
### Installing with Make
```
$ make
$ ./remind-notifier -h
```

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
reminder-notifier is available under the MIT license.
