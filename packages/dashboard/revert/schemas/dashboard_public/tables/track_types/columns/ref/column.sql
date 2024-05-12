-- Revert: schemas/dashboard_public/tables/track_types/columns/ref/column from pg

BEGIN;


ALTER TABLE "dashboard_public".track_types DROP COLUMN ref;
COMMIT;  

