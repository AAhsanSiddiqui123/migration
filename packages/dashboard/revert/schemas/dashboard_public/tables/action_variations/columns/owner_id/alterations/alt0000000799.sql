-- Revert: schemas/dashboard_public/tables/action_variations/columns/owner_id/alterations/alt0000000799 from pg

BEGIN;


ALTER TABLE "dashboard_public".action_variations 
    ALTER COLUMN owner_id DROP DEFAULT;

COMMIT;  

