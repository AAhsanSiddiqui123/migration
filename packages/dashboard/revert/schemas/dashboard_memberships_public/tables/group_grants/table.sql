-- Revert: schemas/dashboard_memberships_public/tables/group_grants/table from pg

BEGIN;
DROP TABLE "dashboard_memberships_public".group_grants;
COMMIT;  

