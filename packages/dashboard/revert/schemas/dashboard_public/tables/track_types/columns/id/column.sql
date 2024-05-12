-- Revert: schemas/dashboard_public/tables/track_types/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".track_types DROP COLUMN id;
COMMIT;  

