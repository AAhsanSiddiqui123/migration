-- Revert: schemas/dashboard_permissions_public/tables/group_member_permissions/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_permissions_public".group_member_permissions FROM authenticated;
COMMIT;  

