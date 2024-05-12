-- Revert: schemas/dashboard_memberships_public/tables/group_members/table from pg

BEGIN;
DROP TABLE "dashboard_memberships_public".group_members;
COMMIT;  

