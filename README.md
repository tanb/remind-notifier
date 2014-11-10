remind-notifier
==============

Send a notificaiton via OSX Reminders.app

```
$ remind-notifier "Wheeee" "Long time processing has been completed"
```
![sample](https://cloud.githubusercontent.com/assets/291175/4975067/098a731a-6917-11e4-93ea-d053d433c555.png)

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
