-- Revert: schemas/dashboard_permissions_public/tables/app_permissions/constraints/app_permissions_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_permissions_public".app_permissions 
    DROP CONSTRAINT app_permissions_pkey;

COMMIT;  

