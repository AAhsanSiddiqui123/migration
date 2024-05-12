-- Revert: schemas/dashboard_public/tables/actions/columns/once_per_object/column from pg

BEGIN;


ALTER TABLE "dashboard_public".actions DROP COLUMN once_per_object;
COMMIT;  

