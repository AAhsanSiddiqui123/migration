import { Client } from './client';
import { writeFileSync } from 'fs';
import tables from './tables';

(async () => {
  const client = new Client(tables);

  const records = await client.goals.populate({
    delete: ['goal_explanations', 'short_name', 'sub_head'],
    relations: [
      {
        isArray: true,
        field: 'actions',
        refTable: 'actions',
        refField: 'title'
      }
    ]
  });

  const actions = require('../csv/json/actions.json').reduce((m, action) => {
    m[action.title] = action;
    return m;
  }, {});
  const goals = require('../csv/json/goals.json').reduce((m, goal) => {
    m[goal.name] = goal;
    return m;
  }, {});

  const assoc = records.reduce((m, v) => {
    const pairs = v.actions
      .map((a) => ({ goal: v.name, action: a }))
      .filter(({ action, goal }) => {
        return actions.hasOwnProperty(action) && goals.hasOwnProperty(goal);
      });
    return [...m, ...pairs];
  }, []);

  writeFileSync(
    __dirname + '/../csv/json/action_goals.json',
    JSON.stringify(assoc, null, 2)
  );
})();
