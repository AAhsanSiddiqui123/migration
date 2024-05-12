-- Revert: schemas/dashboard_memberships_public/tables/app_admin_grants/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".app_admin_grants DROP COLUMN id;
COMMIT;  

