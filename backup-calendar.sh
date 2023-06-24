#!/bin/bash

# Exports my current tasklist/calendar to .ics format and uploads it to a remote server for backup
calcurse --export > /home/kuba/documents/organiser/my_calendar.ics
scp /home/kuba/documents/organiser/my_calendar.ics zsargul@zsargul.xyz:/home/zsargul/backups/organiser/
