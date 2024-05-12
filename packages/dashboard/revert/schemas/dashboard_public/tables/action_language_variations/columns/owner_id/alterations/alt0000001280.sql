-- Revert: schemas/dashboard_public/tables/action_language_variations/columns/owner_id/alterations/alt0000001280 from pg

BEGIN;


ALTER TABLE "dashboard_public".action_language_variations 
    ALTER COLUMN owner_id DROP DEFAULT;

COMMIT;  

