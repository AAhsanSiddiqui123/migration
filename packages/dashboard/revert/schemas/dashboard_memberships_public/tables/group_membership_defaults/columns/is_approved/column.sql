-- Revert: schemas/dashboard_memberships_public/tables/group_membership_defaults/columns/is_approved/column from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".group_membership_defaults DROP COLUMN is_approved;
COMMIT;  

