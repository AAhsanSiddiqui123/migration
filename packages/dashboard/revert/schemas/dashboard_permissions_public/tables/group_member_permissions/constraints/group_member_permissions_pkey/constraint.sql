-- Revert: schemas/dashboard_permissions_public/tables/group_member_permissions/constraints/group_member_permissions_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_permissions_public".group_member_permissions 
    DROP CONSTRAINT group_member_permissions_pkey;

COMMIT;  

