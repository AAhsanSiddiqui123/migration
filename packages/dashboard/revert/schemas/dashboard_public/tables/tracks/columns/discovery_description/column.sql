-- Revert: schemas/dashboard_public/tables/tracks/columns/discovery_description/column from pg

BEGIN;


ALTER TABLE "dashboard_public".tracks DROP COLUMN discovery_description;
COMMIT;  

