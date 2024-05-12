-- Revert: schemas/dashboard_memberships_public/tables/grants/columns/permissions/column from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".grants DROP COLUMN permissions;
COMMIT;  

