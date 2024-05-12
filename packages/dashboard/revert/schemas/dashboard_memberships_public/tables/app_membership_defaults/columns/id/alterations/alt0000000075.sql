-- Revert: schemas/dashboard_memberships_public/tables/app_membership_defaults/columns/id/alterations/alt0000000075 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".app_membership_defaults 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

