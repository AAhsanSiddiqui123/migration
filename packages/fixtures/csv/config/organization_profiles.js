const uuid = require('uuid-hash');

module.exports = {
  input: '../json/organization_profiles.json',
  output: '../sql/organization_profiles.sql',
  schema: 'dashboard_public',
  table: 'organization_profiles',
  // singleStmts: true,
  fields: {
    organization_id: {
      type: 'uuid',
      from: 'name',
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
    },
    website: {
      type: 'url',
      from: 'website',
      parse: (txt) => {
        if (txt && /^http/.test(txt.trim())) {
          return txt.trim();
        }
      }
    },
    description: {
      type: 'text',
      from: 'description',
      parse: (txt) => {
        return txt && txt.trim();
      }
    }
  }
};
