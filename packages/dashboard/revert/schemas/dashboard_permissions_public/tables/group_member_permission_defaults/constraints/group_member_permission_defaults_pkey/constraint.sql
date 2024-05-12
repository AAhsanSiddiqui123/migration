-- Revert: schemas/dashboard_permissions_public/tables/group_member_permission_defaults/constraints/group_member_permission_defaults_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_permissions_public".group_member_permission_defaults 
    DROP CONSTRAINT group_member_permission_defaults_pkey;

COMMIT;  

