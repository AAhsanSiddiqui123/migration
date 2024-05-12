-- Revert: schemas/dashboard_memberships_public/tables/admin_grants/columns/is_grant/column from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".admin_grants DROP COLUMN is_grant;
COMMIT;  

