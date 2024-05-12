-- Revert: schemas/dashboard_public/tables/actions/columns/minimum_group_members/column from pg

BEGIN;


ALTER TABLE "dashboard_public".actions DROP COLUMN minimum_group_members;
COMMIT;  

