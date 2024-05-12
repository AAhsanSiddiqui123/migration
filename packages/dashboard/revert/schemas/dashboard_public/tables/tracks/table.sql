-- Revert: schemas/dashboard_public/tables/tracks/table from pg

BEGIN;
DROP TABLE "dashboard_public".tracks;
COMMIT;  

