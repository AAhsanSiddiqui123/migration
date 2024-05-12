-- Deploy: schemas/dashboard_public/tables/related_actions/indexes/related_actions_action_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/related_actions/table
-- requires: schemas/dashboard_public/tables/related_actions/columns/action_id/column

BEGIN;
CREATE INDEX related_actions_action_id_idx ON "dashboard_public".related_actions (action_id);
COMMIT;
