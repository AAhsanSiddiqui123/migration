-- Revert: schemas/dashboard_public/tables/track_language_variations/columns/track_id/alterations/alt0000001422 from pg

BEGIN;


ALTER TABLE "dashboard_public".track_language_variations 
    ALTER COLUMN track_id DROP NOT NULL;


COMMIT;  

