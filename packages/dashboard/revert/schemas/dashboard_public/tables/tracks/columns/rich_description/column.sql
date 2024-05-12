-- Revert: schemas/dashboard_public/tables/tracks/columns/rich_description/column from pg

BEGIN;


ALTER TABLE "dashboard_public".tracks DROP COLUMN rich_description;
COMMIT;  

