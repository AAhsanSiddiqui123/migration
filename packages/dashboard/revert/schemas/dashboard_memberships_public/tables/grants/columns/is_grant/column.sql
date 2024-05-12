-- Revert: schemas/dashboard_memberships_public/tables/grants/columns/is_grant/column from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".grants DROP COLUMN is_grant;
COMMIT;  

