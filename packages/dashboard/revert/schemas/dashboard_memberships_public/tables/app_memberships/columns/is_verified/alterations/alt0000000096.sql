-- Revert: schemas/dashboard_memberships_public/tables/app_memberships/columns/is_verified/alterations/alt0000000096 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".app_memberships 
    ALTER COLUMN is_verified DROP DEFAULT;

COMMIT;  

