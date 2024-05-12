import { Client, parseImage } from './client';
import { writeFileSync } from 'fs';
import tables from './tables';

(async () => {
  const client = new Client(tables);

  const records = await client.tracks.populate({
    delete: ['track_actions'],
    flatten: ['photo'],
    visit: {
      photo: parseImage
    },
    relations: [
      {
        field: 'owner_id',
        refTable: 'organization_profiles',
        refField: 'name'
      }
    ]
  });

  // const records = require('../csv/json/tracks.json');
  const writeThese = Object.values(
    records.reduce((m, v) => {
      if (!v.owner_id) return m;
      m[v.name] = v;
      return m;
    }, {})
  );

  writeFileSync(
    __dirname + '/../csv/json/tracks.json',
    JSON.stringify(writeThese, null, 2)
  );
})();
