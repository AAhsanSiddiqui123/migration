-- Revert: schemas/dashboard_limits_public/tables/group_member_limits/table from pg

BEGIN;
DROP TABLE "dashboard_limits_public".group_member_limits;
COMMIT;  

