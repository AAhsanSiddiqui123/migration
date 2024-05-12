const uuid = require('uuid-hash');

module.exports = {
  input: '../json/action_item_types.json',
  output: '../sql/action_item_types.sql',
  schema: 'dashboard_public',
  table: 'action_item_types',
  fields: {
    id: {
      type: 'uuid',
      from: 'name',
      parse: (val) => {
        val += '-ActionItemType';
        const identifier = uuid.createHash().update(val).digest();
        return identifier;
      }
    },
    name: 'text'
  }
};
