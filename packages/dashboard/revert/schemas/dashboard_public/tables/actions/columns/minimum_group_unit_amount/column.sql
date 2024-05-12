-- Revert: schemas/dashboard_public/tables/actions/columns/minimum_group_unit_amount/column from pg

BEGIN;


ALTER TABLE "dashboard_public".actions DROP COLUMN minimum_group_unit_amount;
COMMIT;  

