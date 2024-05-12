-- Revert: schemas/dashboard_public/tables/user_forms/indexes/user_forms_user_action_item_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".user_forms_user_action_item_id_idx;
COMMIT;  

