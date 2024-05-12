import { Client, parseImage } from './client';
import { trim } from './convert';
import { writeFileSync } from 'fs';
import tables from './tables';

(async () => {
  const client = new Client(tables);

  const records = await client.goals.populate({
    delete: ['goal_explanations', 'actions'],
    visit: {
      short_name: trim,
      sub_head: trim
    }
  });
  writeFileSync(
    __dirname + '/../csv/json/goals.json',
    JSON.stringify(records, null, 2)
  );
})();
