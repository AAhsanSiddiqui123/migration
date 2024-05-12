-- Revert: schemas/dashboard_memberships_public/tables/app_memberships/columns/is_active/alterations/alt0000000098 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".app_memberships 
    ALTER COLUMN is_active DROP DEFAULT;

COMMIT;  

