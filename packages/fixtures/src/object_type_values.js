import { Client, parseImage } from './client';
import { trim } from './convert';
import { writeFileSync } from 'fs';
import tables from './tables';

(async () => {
  const client = new Client(tables);

  const records = await client.object_type_values.populate({
    flatten: ['photo'],
    visit: {
      name: trim,
      description: trim,
      photo: parseImage
    }
  });
  writeFileSync(
    __dirname + '/../csv/json/object_type_values.json',
    JSON.stringify(records, null, 2)
  );
})();
