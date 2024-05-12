-- Revert: schemas/dashboard_public/tables/action_item_language_variations/columns/owner_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".action_item_language_variations DROP COLUMN owner_id;
COMMIT;  

