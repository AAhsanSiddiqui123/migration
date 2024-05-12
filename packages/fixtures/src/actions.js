import { Client, parseImage } from './client';
import { normalizeCoordinate } from './convert';
import { readFileSync, writeFileSync } from 'fs';
import tables from './tables';

(async () => {
  const client = new Client(tables);

  const records = await client.actions.populate({
    delete: ['action_items', 'action_item_type'],
    flatten: ['photo'],
    require: ['title'], // implement this
    visit: {
      photo: parseImage,
      latitude: normalizeCoordinate,
      longitude: normalizeCoordinate
    },
    relations: [
      {
        isArray: true,
        field: 'tags',
        refTable: 'tags',
        refField: 'name'
      },
      {
        isArray: true,
        field: 'goals',
        refTable: 'goals',
        refField: 'name'
      },
      {
        field: 'owner_id_by_name',
        refTable: 'organization_profiles',
        refField: 'name'
      }
    ]
  });

  // const records = require('../csv/json/actions.json');
  const writeThese = Object.values(
    records.reduce((m, v) => {
      if (!v.title || !v.photo) return m;
      m[v.title] = v;
      return m;
    }, {})
  );

  writeFileSync(
    __dirname + '/../csv/json/actions.json',
    JSON.stringify(writeThese, null, 2)
  );
})();
