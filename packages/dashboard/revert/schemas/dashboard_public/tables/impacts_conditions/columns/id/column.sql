-- Revert: schemas/dashboard_public/tables/impacts_conditions/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".impacts_conditions DROP COLUMN id;
COMMIT;  

