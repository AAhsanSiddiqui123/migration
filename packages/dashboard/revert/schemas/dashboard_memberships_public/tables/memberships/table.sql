-- Revert: schemas/dashboard_memberships_public/tables/memberships/table from pg

BEGIN;
DROP TABLE "dashboard_memberships_public".memberships;
COMMIT;  

