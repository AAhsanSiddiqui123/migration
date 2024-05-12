-- Revert: schemas/dashboard_public/tables/track_language_variations/columns/discovery_description/column from pg

BEGIN;


ALTER TABLE "dashboard_public".track_language_variations DROP COLUMN discovery_description;
COMMIT;  

