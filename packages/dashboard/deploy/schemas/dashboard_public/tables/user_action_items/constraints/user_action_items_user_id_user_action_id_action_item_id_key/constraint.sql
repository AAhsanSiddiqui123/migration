-- Deploy: schemas/dashboard_public/tables/user_action_items/constraints/user_action_items_user_id_user_action_id_action_item_id_key/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_action_items/table

BEGIN;

ALTER TABLE "dashboard_public".user_action_items
    ADD CONSTRAINT user_action_items_user_id_user_action_id_action_item_id_key UNIQUE (user_id,user_action_id,action_item_id);
COMMIT;
