-- Revert: schemas/dashboard_public/tables/impact_language_variations/columns/id/alterations/alt0000001456 from pg

BEGIN;


ALTER TABLE "dashboard_public".impact_language_variations 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

