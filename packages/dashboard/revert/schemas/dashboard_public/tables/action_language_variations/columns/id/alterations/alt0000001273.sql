-- Revert: schemas/dashboard_public/tables/action_language_variations/columns/id/alterations/alt0000001273 from pg

BEGIN;


ALTER TABLE "dashboard_public".action_language_variations 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

