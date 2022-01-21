-- Example
CREATE SOURCE CONNECTOR fleet_description WITH (
  'connector.class'          = 'MongoDbAtlasSource',
  'name'                     = 'recipe-mongodb-fleet_description',
  'kafka.api.key'            = '<my-kafka-api-key>',
  'kafka.api.secret'         = '<my-kafka-api-secret>',
  'connection.host'          = '<database-host-address>',
  'connection.user'          = '<database-username>',
  'connection.password'      = '<database-password>',
  'database'                 = '<database-name>',
  'collection'               = '<database-collection-name>',
  'poll.await.time.ms'       = '5000',
  'poll.max.batch.size'      = '1000',
  'copy.existing'            = 'true',
  'output.data.format'       = 'JSON'
  'tasks.max'                = '1');
