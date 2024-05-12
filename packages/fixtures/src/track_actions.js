import { Client } from './client';
import { writeFileSync } from 'fs';
import tables from './tables';

(async () => {
  const client = new Client(tables);

  const records = await client.tracks.populate({
    relations: [
      {
        isArray: true,
        field: 'track_actions',
        refTable: 'track_actions',
        refField: 'title'
      }
    ]
  });
  const actions = require('../csv/json/actions.json').reduce((m, action) => {
    m[action.title] = action;
    return m;
  }, {});
  const tracks = require('../csv/json/tracks.json').reduce((m, track) => {
    m[track.name] = track;
    return m;
  }, {});

  const assoc = records.reduce((m, v) => {
    const pairs = v.track_actions
      .map((a, i) => ({ track: v.name, track_order: i, action: a }))
      .filter(({ action, track }) => {
        return actions.hasOwnProperty(action) && tracks.hasOwnProperty(track);
      });
    return [...m, ...pairs];
  }, []);

  writeFileSync(
    __dirname + '/../csv/json/track_actions.json',
    JSON.stringify(assoc, null, 2)
  );
})();
