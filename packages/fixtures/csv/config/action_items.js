const { num } = require('envalid');
const uuid = require('uuid-hash');

module.exports = {
  input: '../json/action_items.json',
  output: '../sql/action_items.sql',
  schema: 'dashboard_public',
  table: 'action_items',
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
    name: 'text',
    type: 'text',
    item_type_id: {
      type: 'uuid',
      from: 'type',
      parse: (val) => {
        val += '-ActionItemType';
        const identifier = uuid.createHash().update(val).digest();
        return identifier;
      }
    },
    url: 'url',
    item_order: {
      type: 'int',
      from: 'item_order',
      parse: (num) => {
        const val = num || 0;
        return val + '';
      }
    },
    is_required: 'boolean',
    time_required: {
      type: 'interval',
      cast: 'interval'
    },
    description: 'text',
    notification_text: 'text'
  }
};
