-- Revert: schemas/dashboard_public/tables/tracks/columns/is_approved/column from pg

BEGIN;


ALTER TABLE "dashboard_public".tracks DROP COLUMN is_approved;
COMMIT;  

