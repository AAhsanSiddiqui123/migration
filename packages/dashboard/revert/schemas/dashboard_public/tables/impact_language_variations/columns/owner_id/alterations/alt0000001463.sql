-- Revert: schemas/dashboard_public/tables/impact_language_variations/columns/owner_id/alterations/alt0000001463 from pg

BEGIN;


ALTER TABLE "dashboard_public".impact_language_variations 
    ALTER COLUMN owner_id DROP DEFAULT;

COMMIT;  

