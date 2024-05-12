-- Revert: schemas/dashboard_memberships_public/tables/app_grants/columns/permissions/column from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".app_grants DROP COLUMN permissions;
COMMIT;  

