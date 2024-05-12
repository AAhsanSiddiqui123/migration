const uuid = require('uuid-hash');

module.exports = {
  input: '../json/organization_profiles.json',
  output: '../sql/users.sql',
  schema: 'dashboard_public',
  table: 'users',
  fields: {
    id: {
      type: 'uuid',
      from: 'name',
      parse: (val) => {
        val += '-User';
        const identifier = uuid.createHash().update(val).digest();
        return identifier;
      }
    },
    type: {
      type: 'int',
      from: 'name',
      parse: (val) => {
        return '1';
      }
    },
    profile_picture: {
      type: 'text',
      from: 'profile_picture',
      cast: 'jsonb',
      parse: (text) => {
        if (text && text.versions) delete text.versions;
        return text && JSON.stringify(text);
      }
    }

    // display_name: {
    //   type: 'text',
    //   from: 'name'
    // }
  }
};
