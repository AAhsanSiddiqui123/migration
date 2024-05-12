-- Revert: schemas/dashboard_public/tables/impacts_conditions/columns/value/column from pg

BEGIN;


ALTER TABLE "dashboard_public".impacts_conditions DROP COLUMN value;
COMMIT;  

