-- Revert: schemas/dashboard_public/tables/track_language_variations/constraints/track_language_variations_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".track_language_variations 
    DROP CONSTRAINT track_language_variations_pkey;

COMMIT;  

