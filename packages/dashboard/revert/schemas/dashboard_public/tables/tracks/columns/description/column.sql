-- Revert: schemas/dashboard_public/tables/tracks/columns/description/column from pg

BEGIN;


ALTER TABLE "dashboard_public".tracks DROP COLUMN description;
COMMIT;  

