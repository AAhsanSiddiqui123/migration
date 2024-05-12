-- Revert: schemas/dashboard_public/tables/impacts_conditions/columns/attr_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".impacts_conditions DROP COLUMN attr_id;
COMMIT;  

