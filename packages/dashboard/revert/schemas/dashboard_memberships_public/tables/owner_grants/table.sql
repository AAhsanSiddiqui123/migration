-- Revert: schemas/dashboard_memberships_public/tables/owner_grants/table from pg

BEGIN;
DROP TABLE "dashboard_memberships_public".owner_grants;
COMMIT;  

