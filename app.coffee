arDrone = require('ar-drone')
client  = arDrone.createClient()

#client.takeoff()

client.config('general:navdata_demo', 'FALSE')

client.on 'navdata', (data) ->
  console.log data

#client
#  .after 6000, ->
#    this.stop()
#    this.land()
