-- Revert: schemas/dashboard_permissions_public/tables/app_permission_defaults/columns/id/alterations/alt0000000046 from pg

BEGIN;


ALTER TABLE "dashboard_permissions_public".app_permission_defaults 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

