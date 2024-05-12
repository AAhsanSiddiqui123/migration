-- Revert: schemas/dashboard_public/tables/actions/columns/group_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".actions DROP COLUMN group_id;
COMMIT;  

