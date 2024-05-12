-- Revert: schemas/dashboard_permissions_public/tables/membership_permission_defaults/constraints/membership_permission_defaults_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_permissions_public".membership_permission_defaults 
    DROP CONSTRAINT membership_permission_defaults_pkey;

COMMIT;  

