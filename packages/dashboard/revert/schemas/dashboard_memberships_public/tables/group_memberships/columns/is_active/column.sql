-- Revert: schemas/dashboard_memberships_public/tables/group_memberships/columns/is_active/column from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".group_memberships DROP COLUMN is_active;
COMMIT;  

