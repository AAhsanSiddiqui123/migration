-- Revert: schemas/dashboard_limits_public/tables/group_member_limits/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_limits_public".group_member_limits DROP COLUMN id;
COMMIT;  

