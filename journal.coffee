# Description:
#   None
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot update journal - update the journal app
#
# Author:
#   matthew-parlette

{spawn} = require 'child_process'
module.exports = (robot) ->
  robot.respond /update (.*)\w?journal/i, (msg) ->
    #output = spawn('/bin/sh', ['-c', "sudo su matt -c '/srv/journal.sh u'"])
    output = spawn "/srv/journal.sh", ['u']
    output.stdout.on 'data', (data) ->
      msg.send data.toString()
    msg.send "Journal app updated: http://matt.parlette.net/journal"
