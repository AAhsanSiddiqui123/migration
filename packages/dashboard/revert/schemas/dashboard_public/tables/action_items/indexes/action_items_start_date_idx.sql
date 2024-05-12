-- Revert: schemas/dashboard_public/tables/action_items/indexes/action_items_start_date_idx from pg

BEGIN;
DROP INDEX "dashboard_public".action_items_start_date_idx;
COMMIT;  

