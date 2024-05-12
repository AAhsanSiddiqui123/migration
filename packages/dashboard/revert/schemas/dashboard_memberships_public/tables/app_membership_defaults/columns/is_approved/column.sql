-- Revert: schemas/dashboard_memberships_public/tables/app_membership_defaults/columns/is_approved/column from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".app_membership_defaults DROP COLUMN is_approved;
COMMIT;  

