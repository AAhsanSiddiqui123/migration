-- Deploy: schemas/dashboard_public/tables/user_pass_actions/indexes/user_pass_actions_user_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_pass_actions/table
-- requires: schemas/dashboard_public/tables/user_pass_actions/columns/user_id/column

BEGIN;
CREATE INDEX user_pass_actions_user_id_idx ON "dashboard_public".user_pass_actions (user_id);
COMMIT;
