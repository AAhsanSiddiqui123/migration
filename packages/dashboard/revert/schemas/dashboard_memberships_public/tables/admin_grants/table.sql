-- Revert: schemas/dashboard_memberships_public/tables/admin_grants/table from pg

BEGIN;
DROP TABLE "dashboard_memberships_public".admin_grants;
COMMIT;  

