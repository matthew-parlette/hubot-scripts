# Description:
#   Welcome the user into their day
#
# Dependencies:
#   None
#
# Configuration:
#
# Commands:
#   hubot good morning
#
# Author:
#   matthew-parlette

module.exports = (robot) ->
  robot.respond /good ?morning/i, (msg) ->
    msg.reply "Good morning, sir"
