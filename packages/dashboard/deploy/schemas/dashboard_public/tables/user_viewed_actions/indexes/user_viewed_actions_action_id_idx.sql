-- Deploy: schemas/dashboard_public/tables/user_viewed_actions/indexes/user_viewed_actions_action_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_viewed_actions/table
-- requires: schemas/dashboard_public/tables/user_viewed_actions/columns/action_id/column

BEGIN;
CREATE INDEX user_viewed_actions_action_id_idx ON "dashboard_public".user_viewed_actions (action_id);
COMMIT;
