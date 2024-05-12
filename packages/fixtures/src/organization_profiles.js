import { Client, parseImage } from './client';
import { normalizeCoordinate } from './convert';
import { writeFileSync } from 'fs';
import tables from './tables';

(async () => {
  const client = new Client(tables);

  const records = await client.organization_profiles.populate({
    delete: ['actions'],
    flatten: ['profile_picture'],
    visit: {
      profile_picture: parseImage
    }
    // relations: [
    //   {
    //     isArray: true,
    //     field: 'tags',
    //     refTable: 'tags',
    //     refField: 'name'
    //   },
    //   {
    //     isArray: true,
    //     field: 'organization_profiles',
    //     refTable: 'organization_profiles',
    //     refField: 'name'
    //   },
    //   {
    //     field: 'owner_id_by_name',
    //     refTable: 'organization_profiles',
    //     refField: 'name'
    //   }
    // ]
  });
  writeFileSync(
    __dirname + '/../csv/json/organization_profiles.json',
    JSON.stringify(records, null, 2)
  );
})();
