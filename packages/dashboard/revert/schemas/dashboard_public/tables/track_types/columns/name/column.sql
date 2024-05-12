-- Revert: schemas/dashboard_public/tables/track_types/columns/name/column from pg

BEGIN;


ALTER TABLE "dashboard_public".track_types DROP COLUMN name;
COMMIT;  

