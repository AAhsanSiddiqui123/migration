-- Revert: schemas/dashboard_public/tables/track_language_variations/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".track_language_variations DROP COLUMN id;
COMMIT;  

