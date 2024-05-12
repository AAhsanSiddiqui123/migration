-- Revert: schemas/dashboard_memberships_public/tables/group_membership_defaults/columns/is_approved/alterations/alt0000000315 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".group_membership_defaults 
    ALTER COLUMN is_approved DROP DEFAULT;

COMMIT;  

