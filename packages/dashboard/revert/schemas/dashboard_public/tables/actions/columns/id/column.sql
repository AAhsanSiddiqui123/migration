-- Revert: schemas/dashboard_public/tables/actions/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".actions DROP COLUMN id;
COMMIT;  

