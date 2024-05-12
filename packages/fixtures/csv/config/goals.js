const uuid = require('uuid-hash');

module.exports = {
  input: '../json/goals.json',
  output: '../sql/goals.sql',
  schema: 'dashboard_public',
  table: 'goals',
  // singleStmts: true,
  fields: {
    id: {
      type: 'uuid',
      from: ['name'],
      parse: (val) => {
        val += '-Goal';
        const identifier = uuid.createHash().update(val).digest();
        return identifier;
      }
    },
    name: {
      type: 'text',
      from: 'name',
      parse: (txt) => {
        return txt && txt.trim();
      }
    },
    slug: {
      type: 'text',
      from: 'name',
      wrap: ['inflection', 'slugify']
    },
    short_name: 'text',
    sub_head: 'text'
  }
};
