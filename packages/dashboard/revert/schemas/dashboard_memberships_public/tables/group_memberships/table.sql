-- Revert: schemas/dashboard_memberships_public/tables/group_memberships/table from pg

BEGIN;
DROP TABLE "dashboard_memberships_public".group_memberships;
COMMIT;  

