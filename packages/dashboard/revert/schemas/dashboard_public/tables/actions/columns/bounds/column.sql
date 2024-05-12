-- Revert: schemas/dashboard_public/tables/actions/columns/bounds/column from pg

BEGIN;


ALTER TABLE "dashboard_public".actions DROP COLUMN bounds;
COMMIT;  

