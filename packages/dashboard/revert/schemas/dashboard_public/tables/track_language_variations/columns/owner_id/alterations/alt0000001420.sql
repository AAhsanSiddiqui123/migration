-- Revert: schemas/dashboard_public/tables/track_language_variations/columns/owner_id/alterations/alt0000001420 from pg

BEGIN;


ALTER TABLE "dashboard_public".track_language_variations 
    ALTER COLUMN owner_id DROP NOT NULL;


COMMIT;  

