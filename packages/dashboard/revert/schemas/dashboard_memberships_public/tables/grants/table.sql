-- Revert: schemas/dashboard_memberships_public/tables/grants/table from pg

BEGIN;
DROP TABLE "dashboard_memberships_public".grants;
COMMIT;  

