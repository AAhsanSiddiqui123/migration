-- Revert: schemas/dashboard_permissions_public/tables/membership_permission_defaults/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_permissions_public".membership_permission_defaults FROM authenticated;
COMMIT;  

