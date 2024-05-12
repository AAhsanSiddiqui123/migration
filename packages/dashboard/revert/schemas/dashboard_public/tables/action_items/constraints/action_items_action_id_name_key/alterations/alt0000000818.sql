-- Revert: schemas/dashboard_public/tables/action_items/constraints/action_items_action_id_name_key/alterations/alt0000000818 from pg

BEGIN;
COMMENT ON CONSTRAINT action_items_action_id_name_key ON "dashboard_public".action_items IS NULL;
COMMIT;  

