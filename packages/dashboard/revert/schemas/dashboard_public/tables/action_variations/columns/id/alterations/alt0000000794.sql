-- Revert: schemas/dashboard_public/tables/action_variations/columns/id/alterations/alt0000000794 from pg

BEGIN;


ALTER TABLE "dashboard_public".action_variations 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

