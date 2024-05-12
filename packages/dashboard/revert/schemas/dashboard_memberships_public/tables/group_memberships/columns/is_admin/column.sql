-- Revert: schemas/dashboard_memberships_public/tables/group_memberships/columns/is_admin/column from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".group_memberships DROP COLUMN is_admin;
COMMIT;  

