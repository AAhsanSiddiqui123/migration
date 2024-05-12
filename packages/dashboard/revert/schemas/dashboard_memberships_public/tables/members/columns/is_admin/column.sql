-- Revert: schemas/dashboard_memberships_public/tables/members/columns/is_admin/column from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".members DROP COLUMN is_admin;
COMMIT;  

