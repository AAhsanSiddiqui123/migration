-- Deploy: schemas/dashboard_public/tables/user_action_items/indexes/user_action_items_complete_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_action_items/table
-- requires: schemas/dashboard_public/tables/user_action_items/columns/complete/column

BEGIN;
CREATE INDEX user_action_items_complete_idx ON "dashboard_public".user_action_items (complete);
COMMIT;
