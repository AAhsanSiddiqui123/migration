-- Revert: schemas/dashboard_public/tables/impacts_conditions/columns/object_value_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".impacts_conditions DROP COLUMN object_value_id;
COMMIT;  

