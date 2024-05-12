-- Revert: schemas/dashboard_public/tables/track_language_variations/table from pg

BEGIN;
DROP TABLE "dashboard_public".track_language_variations;
COMMIT;  

