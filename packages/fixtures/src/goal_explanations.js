import { Client, parseFile } from './client';
import { convertDuration } from './convert';
import { writeFileSync } from 'fs';
import tables from './tables';

(async () => {
  const client = new Client(tables);

  const records = await client.goal_explanations.populate({
    delete: ['uselessfield'],
    flatten: ['audio'],
    visit: {
      audio: parseFile,
      audio_duration: convertDuration('30 seconds')
    },
    relations: [
      {
        field: 'goal',
        refTable: 'goals',
        refField: 'name'
      }
    ]
  });
  writeFileSync(
    __dirname + '/../csv/json/goal_explanations.json',
    JSON.stringify(records, null, 2)
  );
})();
