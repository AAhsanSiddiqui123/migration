-- Revert: schemas/dashboard_permissions_public/tables/membership_permissions/constraints/membership_permissions_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_permissions_public".membership_permissions 
    DROP CONSTRAINT membership_permissions_pkey;

COMMIT;  

