-- Revert: schemas/dashboard_public/tables/forms/indexes/forms_action_item_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".forms_action_item_id_idx;
COMMIT;  

