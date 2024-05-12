-- Revert: schemas/dashboard_public/tables/action_item_types/indexes/action_item_types_slug_idx from pg

BEGIN;
DROP INDEX "dashboard_public".action_item_types_slug_idx;
COMMIT;  

