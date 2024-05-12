-- Revert: schemas/dashboard_limits_public/tables/group_member_limit_defaults/table from pg

BEGIN;
DROP TABLE "dashboard_limits_public".group_member_limit_defaults;
COMMIT;  

