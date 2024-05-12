-- Deploy: schemas/dashboard_public/tables/user_action_items/indexes/user_action_items_action_item_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_action_items/table
-- requires: schemas/dashboard_public/tables/user_action_items/columns/action_item_id/column

BEGIN;
CREATE INDEX user_action_items_action_item_id_idx ON "dashboard_public".user_action_items (action_item_id);
COMMIT;
