-- Revert: schemas/dashboard_public/tables/tracks/columns/slug/column from pg

BEGIN;


ALTER TABLE "dashboard_public".tracks DROP COLUMN slug;
COMMIT;  

