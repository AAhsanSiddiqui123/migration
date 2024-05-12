import { readFileSync, writeFileSync } from 'fs';
import { resolve } from 'path';

const getPath = (name) => {
  return readFileSync(resolve(`${__dirname}/../csv/sql/${name}.sql`), 'utf-8');
};

const add_action_goals = ` 
-- Deploy schemas/dashboard_public/tables/action_goals/fixtures/add_action_goals to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_goals/table
-- requires: schemas/dashboard_public/tables/goals/fixtures/add_goals
-- requires: schemas/dashboard_public/tables/actions/fixtures/add_actions_fixture
-- requires: schemas/faker/tables/dictionary/fixtures/add_sustainability_tags

BEGIN;

${getPath('action_goals')}

COMMIT;
`;
writeFileSync(
  `${__dirname}/../deploy/schemas/dashboard_public/tables/action_goals/fixtures/add_action_goals.sql`,
  add_action_goals
);

const action_items = ` 
-- Deploy schemas/dashboard_public/tables/action_items/fixtures/add_action_items to pg
 
-- requires: schemas/dashboard_public/tables/actions/fixtures/add_actions_fixture 
-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_items/table

BEGIN;

-- types

${getPath('action_item_types')}

-- items

${getPath('action_items')}

COMMIT;
`;
writeFileSync(
  `${__dirname}/../deploy/schemas/dashboard_public/tables/action_items/fixtures/add_action_items.sql`,
  action_items
);

const actions = ` 
-- Deploy schemas/dashboard_public/tables/actions/fixtures/add_actions_fixture to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/actions/table
-- requires: schemas/dashboard_public/tables/organizations/fixtures/add_org_profiles
-- requires: schemas/dashboard_public/tables/zip_codes/fixtures/add_zips 

BEGIN;

-- TODO REMOVE THESE!!!!

ALTER TABLE dashboard_public.action_items ADD COLUMN type text;

${getPath('actions')}

${getPath('tracks')}

${getPath('track_actions')}

UPDATE
    dashboard_public.tracks
SET
    is_published = TRUE,
    is_approved = TRUE
WHERE TRUE;

COMMIT;
`;

writeFileSync(
  `${__dirname}/../deploy/schemas/dashboard_public/tables/actions/fixtures/add_actions_fixture.sql`,
  actions
);

const goal_explanations = `
-- Deploy schemas/dashboard_public/tables/goal_explanations/fixtures/add_goal_explanations to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/goal_explanations/table
-- requires: schemas/dashboard_public/tables/goals/fixtures/add_goals 

BEGIN;

${getPath('goal_explanations')}

COMMIT;
`;

writeFileSync(
  `${__dirname}/../deploy/schemas/dashboard_public/tables/goal_explanations/fixtures/add_goal_explanations.sql`,
  goal_explanations
);

const goals = `
-- Deploy schemas/dashboard_public/tables/goals/fixtures/add_goals to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/goals/table
-- requires: schemas/faker/tables/dictionary/fixtures/add_sustainability_tags

BEGIN;

${getPath('goals')}

COMMIT;
`;
writeFileSync(
  `${__dirname}/../deploy/schemas/dashboard_public/tables/goals/fixtures/add_goals.sql`,
  goals
);

const add_org_profiles = ` 
-- Deploy schemas/dashboard_public/tables/organizations/fixtures/add_org_profiles to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/organizations/table
-- requires: schemas/dashboard_public/tables/users/fixtures/add_users 

BEGIN;

${getPath('users')}

${getPath('organization_profiles')}

COMMIT;
`;

writeFileSync(
  `${__dirname}/../deploy/schemas/dashboard_public/tables/organizations/fixtures/add_org_profiles.sql`,
  add_org_profiles
);
