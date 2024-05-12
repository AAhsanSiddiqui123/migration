const uuid = require('uuid-hash');

module.exports = {
  input: '../json/goal_explanations.json',
  output: '../sql/goal_explanations.sql',
  schema: 'dashboard_public',
  table: 'goal_explanations',
  singleStmts: true,
  fields: {
    goal_id: {
      type: 'uuid',
      from: 'goal',
      parse: (val) => {
        val += '-Goal';
        const identifier = uuid.createHash().update(val).digest();
        return identifier;
      }
    },
    audio: {
      type: 'attachment',
      from: 'audio',
      cast: 'jsonb',
      parse: (json) => {
        // was already stringified?
        // why was photos not?
        return json;
      }
    },
    audio_duration: 'interval',
    explanation_title: 'title',
    explanation: 'title'
  }
};
