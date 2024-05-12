-- Deploy: schemas/dashboard_public/tables/user_action_items/constraints/user_action_items_user_id_user_action_id_action_item_id_key/alterations/alt0000000895 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_action_items/constraints/user_action_items_user_id_user_action_id_action_item_id_key/constraint

BEGIN;
COMMENT ON CONSTRAINT user_action_items_user_id_user_action_id_action_item_id_key ON "dashboard_public".user_action_items IS E'@omit';
COMMIT;
