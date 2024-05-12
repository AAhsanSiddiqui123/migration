const uuid = require('uuid-hash');

module.exports = {
  input: '../json/tracks.json',
  output: '../sql/tracks.sql',
  schema: 'dashboard_public',
  table: 'tracks',
  singleStmts: true,
  fields: {
    owner_id: {
      type: 'uuid',
      from: 'owner_id',
      parse: (val) => {
        val += '-User';
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
    }
  }
};
