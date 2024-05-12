-- Revert: schemas/dashboard_permissions_public/tables/group_member_permission_defaults/columns/permissions/alterations/alt0000000288 from pg

BEGIN;


ALTER TABLE "dashboard_permissions_public".group_member_permission_defaults 
    ALTER COLUMN permissions DROP DEFAULT;

COMMIT;  

