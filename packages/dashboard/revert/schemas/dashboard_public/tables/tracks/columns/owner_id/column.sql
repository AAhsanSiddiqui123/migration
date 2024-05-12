-- Revert: schemas/dashboard_public/tables/tracks/columns/owner_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".tracks DROP COLUMN owner_id;
COMMIT;  

