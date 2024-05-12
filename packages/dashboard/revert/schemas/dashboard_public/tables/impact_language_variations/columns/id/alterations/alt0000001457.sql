-- Revert: schemas/dashboard_public/tables/impact_language_variations/columns/id/alterations/alt0000001457 from pg

BEGIN;


ALTER TABLE "dashboard_public".impact_language_variations 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

