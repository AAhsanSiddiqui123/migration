-- Revert: schemas/dashboard_memberships_public/tables/app_memberships/columns/is_disabled/alterations/alt0000000094 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".app_memberships 
    ALTER COLUMN is_disabled DROP DEFAULT;

COMMIT;  

