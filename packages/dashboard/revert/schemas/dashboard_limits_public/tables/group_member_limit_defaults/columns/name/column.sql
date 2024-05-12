-- Revert: schemas/dashboard_limits_public/tables/group_member_limit_defaults/columns/name/column from pg

BEGIN;


ALTER TABLE "dashboard_limits_public".group_member_limit_defaults DROP COLUMN name;
COMMIT;  

