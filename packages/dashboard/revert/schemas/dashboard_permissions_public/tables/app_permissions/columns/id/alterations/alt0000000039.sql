-- Revert: schemas/dashboard_permissions_public/tables/app_permissions/columns/id/alterations/alt0000000039 from pg

BEGIN;


ALTER TABLE "dashboard_permissions_public".app_permissions 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

