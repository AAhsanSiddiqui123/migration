-- Revert: schemas/dashboard_memberships_public/tables/members/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".members DROP COLUMN id;
COMMIT;  

