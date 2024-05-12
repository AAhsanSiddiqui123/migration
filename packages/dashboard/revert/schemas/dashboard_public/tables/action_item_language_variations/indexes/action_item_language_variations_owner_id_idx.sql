-- Revert: schemas/dashboard_public/tables/action_item_language_variations/indexes/action_item_language_variations_owner_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".action_item_language_variations_owner_id_idx;
COMMIT;  

