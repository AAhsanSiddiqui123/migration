-- Revert: schemas/dashboard_permissions_public/tables/app_permission_defaults/constraints/app_permission_defaults_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_permissions_public".app_permission_defaults 
    DROP CONSTRAINT app_permission_defaults_pkey;

COMMIT;  

