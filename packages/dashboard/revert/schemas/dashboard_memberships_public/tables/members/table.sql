-- Revert: schemas/dashboard_memberships_public/tables/members/table from pg

BEGIN;
DROP TABLE "dashboard_memberships_public".members;
COMMIT;  

