-- Revert: schemas/dashboard_memberships_public/tables/membership_defaults/columns/create_groups_cascade_members/column from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".membership_defaults DROP COLUMN create_groups_cascade_members;
COMMIT;  

