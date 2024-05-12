-- Revert: schemas/dashboard_permissions_public/tables/group_member_permission_defaults/columns/id/alterations/alt0000000286 from pg

BEGIN;


ALTER TABLE "dashboard_permissions_public".group_member_permission_defaults 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

