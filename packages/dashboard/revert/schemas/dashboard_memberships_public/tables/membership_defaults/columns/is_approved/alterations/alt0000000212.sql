-- Revert: schemas/dashboard_memberships_public/tables/membership_defaults/columns/is_approved/alterations/alt0000000212 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".membership_defaults 
    ALTER COLUMN is_approved DROP DEFAULT;

COMMIT;  

