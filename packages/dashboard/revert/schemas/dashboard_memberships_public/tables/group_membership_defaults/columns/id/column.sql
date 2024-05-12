-- Revert: schemas/dashboard_memberships_public/tables/group_membership_defaults/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".group_membership_defaults DROP COLUMN id;
COMMIT;  

