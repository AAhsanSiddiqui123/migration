-- Revert: schemas/dashboard_memberships_public/tables/group_memberships/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".group_memberships DROP COLUMN id;
COMMIT;  

