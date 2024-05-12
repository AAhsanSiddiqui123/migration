-- Deploy: schemas/dashboard_public/tables/user_actions/indexes/user_actions_user_updated_at_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_actions/table
-- requires: schemas/dashboard_public/tables/user_actions/columns/user_updated_at/column

BEGIN;
CREATE INDEX user_actions_user_updated_at_idx ON "dashboard_public".user_actions (user_updated_at);
COMMIT;
