-- Revert: schemas/dashboard_public/tables/actions/columns/minimum_group_unit_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".actions DROP COLUMN minimum_group_unit_id;
COMMIT;  

