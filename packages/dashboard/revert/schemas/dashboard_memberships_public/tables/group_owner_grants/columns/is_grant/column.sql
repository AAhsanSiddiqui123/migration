-- Revert: schemas/dashboard_memberships_public/tables/group_owner_grants/columns/is_grant/column from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".group_owner_grants DROP COLUMN is_grant;
COMMIT;  

