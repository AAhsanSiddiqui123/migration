-- Revert: schemas/dashboard_memberships_public/tables/app_memberships/columns/permissions/alterations/alt0000000104 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".app_memberships 
    ALTER COLUMN permissions DROP DEFAULT;

COMMIT;  

