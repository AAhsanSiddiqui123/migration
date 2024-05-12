-- Revert: schemas/dashboard_memberships_public/tables/app_grants/columns/is_grant/column from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".app_grants DROP COLUMN is_grant;
COMMIT;  

