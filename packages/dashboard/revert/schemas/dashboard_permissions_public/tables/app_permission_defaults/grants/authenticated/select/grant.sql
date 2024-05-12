-- Revert: schemas/dashboard_permissions_public/tables/app_permission_defaults/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_permissions_public".app_permission_defaults FROM authenticated;
COMMIT;  

