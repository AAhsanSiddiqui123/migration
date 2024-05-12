-- Revert: schemas/dashboard_public/tables/impact_language_variations/columns/impact_id/alterations/alt0000001461 from pg

BEGIN;


ALTER TABLE "dashboard_public".impact_language_variations 
    ALTER COLUMN impact_id DROP NOT NULL;


COMMIT;  

