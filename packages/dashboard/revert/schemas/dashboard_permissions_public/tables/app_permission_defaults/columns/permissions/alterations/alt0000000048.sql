-- Revert: schemas/dashboard_permissions_public/tables/app_permission_defaults/columns/permissions/alterations/alt0000000048 from pg

BEGIN;


ALTER TABLE "dashboard_permissions_public".app_permission_defaults 
    ALTER COLUMN permissions DROP NOT NULL;


COMMIT;  

