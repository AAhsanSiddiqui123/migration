-- Revert: schemas/dashboard_public/tables/impacts_conditions/table from pg

BEGIN;
DROP TABLE "dashboard_public".impacts_conditions;
COMMIT;  

