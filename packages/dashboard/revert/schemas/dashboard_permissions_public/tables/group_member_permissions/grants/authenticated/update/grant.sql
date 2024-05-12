-- Revert: schemas/dashboard_permissions_public/tables/group_member_permissions/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_permissions_public".group_member_permissions FROM authenticated;
COMMIT;  

