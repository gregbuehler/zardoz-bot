# Description:
#   Make sure that hubot knows the saddest thing.
#
# Commands:
#   hubot the rules - Make sure hubot knows the saddest thing.
#
# Notes:
#   DON'T DELETE THIS SCRIPT! ALL ROBAWTS MUST KNOW THE SADDEST THING

saddestThing = [
  "The saddest thing is a little girl who is told by her own mother and father that she will never be pretty.",
  "And then they open the front door and on the porch is a little white suitcase, with all of her things in it."
  ]

module.exports = (robot) ->
  robot.respond /what is the saddest thing?/i, (msg) ->
    msg.send saddestThing.join('\n')

