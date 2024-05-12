const uuid = require('uuid-hash');

module.exports = {
  input: '../json/action_goals.json',
  output: '../sql/action_goals.sql',
  schema: 'dashboard_public',
  table: 'action_goals',
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
    goal_id: {
      type: 'uuid',
      from: 'goal',
      parse: (val) => {
        val += '-Goal';
        const identifier = uuid.createHash().update(val).digest();
        return identifier;
      }
    }
  }
};
