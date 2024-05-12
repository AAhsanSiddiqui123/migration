-- Revert: schemas/dashboard_public/tables/action_item_language_variations/columns/id/alterations/alt0000001406 from pg

BEGIN;


ALTER TABLE "dashboard_public".action_item_language_variations 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

