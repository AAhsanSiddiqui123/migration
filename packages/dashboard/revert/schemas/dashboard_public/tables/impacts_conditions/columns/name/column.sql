-- Revert: schemas/dashboard_public/tables/impacts_conditions/columns/name/column from pg

BEGIN;


ALTER TABLE "dashboard_public".impacts_conditions DROP COLUMN name;
COMMIT;  

