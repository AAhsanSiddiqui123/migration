-- Revert: schemas/dashboard_public/tables/actions/columns/photo/column from pg

BEGIN;


ALTER TABLE "dashboard_public".actions DROP COLUMN photo;
COMMIT;  

