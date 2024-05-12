-- Revert: schemas/dashboard_public/tables/action_item_types/indexes/action_item_types_ref_num_idx from pg

BEGIN;
DROP INDEX "dashboard_public".action_item_types_ref_num_idx;
COMMIT;  

