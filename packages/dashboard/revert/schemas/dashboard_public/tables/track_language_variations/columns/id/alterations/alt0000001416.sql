-- Revert: schemas/dashboard_public/tables/track_language_variations/columns/id/alterations/alt0000001416 from pg

BEGIN;


ALTER TABLE "dashboard_public".track_language_variations 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

