-- Revert: schemas/dashboard_memberships_public/tables/app_membership_defaults/columns/is_verified/alterations/alt0000000087 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".app_membership_defaults 
    ALTER COLUMN is_verified DROP DEFAULT;

COMMIT;  

