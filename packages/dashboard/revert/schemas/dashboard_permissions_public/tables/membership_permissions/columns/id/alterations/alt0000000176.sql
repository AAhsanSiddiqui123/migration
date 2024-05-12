-- Revert: schemas/dashboard_permissions_public/tables/membership_permissions/columns/id/alterations/alt0000000176 from pg

BEGIN;


ALTER TABLE "dashboard_permissions_public".membership_permissions 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

