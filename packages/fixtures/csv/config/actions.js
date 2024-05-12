const uuid = require('uuid-hash');

module.exports = {
  input: '../json/actions.json',
  output: '../sql/actions.sql',
  schema: 'dashboard_public',
  table: 'actions',
  singleStmts: true,
  fields: {
    owner_id: {
      type: 'uuid',
      from: 'owner_id_by_name',
      parse: (val) => {
        val += '-User';
        const identifier = uuid.createHash().update(val).digest();
        return identifier;
      }
    },
    title: {
      type: 'text',
      from: 'title',
      parse: (txt) => {
        return txt.trim();
      }
    },
    slug: {
      from: 'title',
      wrap: ['inflection', 'slugify'],
      parse: (txt) => {
        return txt.trim();
      }
    },
    url: {
      from: 'url',
      parse: (txt) => {
        return txt.trim();
      }
    },
    photo: {
      type: 'text',
      from: 'photo',
      cast: 'jsonb',
      parse: (text) => {
        // if (!text || !/\((http[^)]+)\)/.test(text)) return '';
        // const url = text.match(/\((http[^)]+)\)/)[1];
        // const obj = {
        //   url,
        //   mime: url.endsWith('png') ? 'image/png' : 'image/jpg'
        // };
        if (text && text.versions) delete text.versions;
        return JSON.stringify(text);
      }
    },
    location: {
      type: 'location',
      from: ['longitude', 'latitude'],
      parse: (text) => {
        console.log('location', text);
        return text;
      }
    },
    is_approved: {
      type: 'boolean',
      from: 'approved',
      parse: (k) => {
        if (k === null) return false;
        return k;
      }
    },
    is_published: {
      type: 'boolean',
      from: 'approved', // for now approved = published
      parse: (k) => {
        if (k === null) return false;
        return k;
      }
    },
    is_private: {
      type: 'boolean',
      from: 'private',
      parse: (k) => {
        if (k === null) return false;
        return k;
      }
    },
    self_verifiable: {
      type: 'boolean',
      from: 'self_verifiable',
      parse: (k) => {
        if (k === null) return true;
        return k;
      }
    },
    is_recurring: {
      type: 'boolean',
      from: 'is_recurring',
      parse: (k) => {
        if (k === null) return false;
        return k;
      }
    },
    limited_to_location: {
      type: 'boolean',
      from: 'limited_to_location',
      parse: (k) => {
        if (k === null) return false;
        return k;
      }
    },
    once_per_object: {
      type: 'boolean',
      from: 'once_per_object',
      parse: (k) => {
        if (k === null) return false;
        return k;
      }
    },
    // tags: 'citext[]', // TODO handle tags

    // reward_amount: 'numeric',
    // total_reward_limit: 'numeric',
    // weekly_limit: 'int',
    // daily_limit: 'int',
    // total_limit: 'int',
    // user_total_limit: 'int',
    // user_weekly_limit: 'int',
    // user_daily_limit: 'int',
    minimum_group_members: 'int',
    // reward_unit: 'text',
    start_date: 'timestamptz',
    end_date: 'timestamptz',
    description: 'text',
    call_to_action: 'text',
    discovery_header: 'text',
    discovery_description: 'text',
    completed_action_text: 'text',
    activity_feed_text: 'text',
    already_completed_action_text: 'text',
    time_required: {
      type: 'interval',
      cast: 'interval',
      parse: (k) => {
        return k + ' seconds';
      }
    },
    recurring_interval: {
      type: 'interval',
      cast: 'interval',
      parse: (k) => {
        k = k || 0;
        return k + ' seconds';
      }
    }
  }
};
