/* Source: https://github.com/mcollina/mosca/wiki/Mosca-basic-usage */
var mosca = require('mosca')

var ascoltatore = {
  //using ascoltatore
  type: 'mongo',
  url: 'mongodb://localhost:27017/mqtt',
  pubsubCollection: 'ascoltatori',
  mongo: {}
};

var moscaSettings = {
  port: 1883,
  http: {
    port: 8000,
    bundle: true,
  },
  backend: ascoltatore,
  persistence: {
    factory: mosca.persistence.Mongo,
    url: 'mongodb://localhost:27017/mqtt'
  }
};

var server = new mosca.Server(moscaSettings);
server.on('ready', setup);

server.on('clientConnected', function(client) {
    console.log('client connected', client.id);
});

// Fired when a client subscribed to broker
server.on('subscribed', function(topic, client) {
  // Check is topic required:
  console.log("Subscribed", topic, "by client", client.id);
  if (topic == 'linh/#') {
    // Publish current values
    console.log("Client subscribed on expected topic (linh/#). Publish current values...");
  }
});

// fired when a message is received
server.on('published', function(packet, client) {
  console.log('Published', packet.payload);
});

// fired when the mqtt server is ready
function setup() {
  console.log('Mosca server is up and running')
}