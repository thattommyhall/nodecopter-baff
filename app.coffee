arDrone = require('ar-drone')
client  = arDrone.createClient()

client.takeoff();

client
  .after 5000, ->
    this.clockwise(0.5);
  .after 3000, ->
    this.stop()
    this.land()

client.config('general:navdata_demo', 'FALSE')

client.on 'navdata', (data) ->
  console.log data

