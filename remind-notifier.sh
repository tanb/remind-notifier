#! /bin/bash
usage_exit() {
    echo -e "
Usage: remind-notifier [-d delay] [-l listname] title message

Description
The options are as follows:

\t-d delay
\t\tEnter a specific remind delay for seconds. Default 1.

\t-l listname
\t\tDefault is Notifications. Enter a specific reminder list name. If the reminder list is not found, it cause an error and exit.
"
    exit 1
}

if [ $# -lt 1 ];then
    usage_exit
fi

while getopts d:l:h OPT
do
    case $OPT in
        d) DELAY=$OPTARG;;
        l) LISTNAME=$OPTARG;;
        h) usage_exit;;
        \?) usage_exit;;
    esac
done
shift $((OPTIND - 1))

if [[ -n $DELAY ]]; then
    if [[ ! $DELAY =~ ^-?[0-9]+$ ]]; then
        usage_exit        
    fi
else
    DELAY=1
fi

if [[ -z $LISTNAME ]]; then
    LISTNAME="Notifications"
fi

osascript -lJavaScript -e "
App = Application('Reminders')
list = App.lists[\"${LISTNAME}\"]
now = new Date()
remindMeDate = new Date(now.getTime() + ${DELAY} * 1000)
reminder = App.Reminder({\"name\": \"$1\", \"body\": \"$2\", \"remindMeDate\": remindMeDate})
list.reminders.push(reminder)
" > /dev/null
