const uuid = require('uuid-hash');

module.exports = {
  input: '../json/track_actions.json',
  output: '../sql/track_actions.sql',
  schema: 'dashboard_public',
  table: 'track_actions',
  singleStmts: true,
  fields: {
    action_id: {
      type: 'related',
      from: 'action',
      schema: 'dashboard_public',
      table: 'actions',
      refType: 'uuid',
      refKey: 'id',
      refField: 'slug',
      wrap: ['inflection', 'slugify']
    },
    track_id: {
      type: 'related',
      from: 'track',
      schema: 'dashboard_public',
      table: 'tracks',
      refType: 'uuid',
      refKey: 'id',
      refField: 'name'
      // wrap: ['inflection', 'slugify']
    },
    owner_id: {
      type: 'related',
      from: 'action',
      schema: 'dashboard_public',
      table: 'actions',
      refType: 'uuid',
      refKey: 'owner_id',
      refField: 'slug',
      wrap: ['inflection', 'slugify']
    },
    track_order: {
      type: 'int',
      from: 'track_order',
      parse: (num) => {
        const val = num || 0;
        return val + '';
      }
    }

    // track_id: {
    //   type: 'uuid',
    //   from: 'track',
    //   parse: (val) => {
    //     val += '-Track';
    //     const identifier = uuid.createHash().update(val).digest();
    //     return identifier;
    //   }
    // }
  }
};
