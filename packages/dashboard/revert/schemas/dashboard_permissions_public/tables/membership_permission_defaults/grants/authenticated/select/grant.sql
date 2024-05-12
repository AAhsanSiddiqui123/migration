-- Revert: schemas/dashboard_permissions_public/tables/membership_permission_defaults/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_permissions_public".membership_permission_defaults FROM authenticated;
COMMIT;  

