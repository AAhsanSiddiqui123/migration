-- Revert: schemas/dashboard_public/tables/user_action_items/indexes/user_action_items_object_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".user_action_items_object_id_idx;
COMMIT;  

