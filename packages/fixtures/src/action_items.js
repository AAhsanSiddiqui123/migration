import { Client, parseFile } from './client';
import { convertDuration } from './convert';
import { writeFileSync } from 'fs';
import tables from './tables';

(async () => {
  const client = new Client(tables);

  const records = await client.action_items.populate({
    flatten: ['media'],
    visit: {
      media: parseFile,
      action: (arr) => {
        if (arr && arr[0]) return arr[0];
        return arr;
      },
      time_required: convertDuration('60 seconds'),
      type: (val) => {
        if (val) return val.trim();
        return 'Check Box';
      },
      is_required: (val) => {
        if (val) return val;
        return false;
      }
    },
    relations: [
      {
        isArray: true,
        field: 'action',
        refTable: 'actions',
        refField: 'title'
      }
    ]
  });

  const actions = require('../csv/json/actions.json').reduce((m, action) => {
    m[action.title] = action;
    return m;
  }, {});

  const json = records.filter((item) => {
    return actions.hasOwnProperty(item.action);
  });

  writeFileSync(
    __dirname + '/../csv/json/action_items.json',
    JSON.stringify(json, null, 2)
  );
})();
