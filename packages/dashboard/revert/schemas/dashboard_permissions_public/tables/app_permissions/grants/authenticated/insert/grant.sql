-- Revert: schemas/dashboard_permissions_public/tables/app_permissions/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_permissions_public".app_permissions FROM authenticated;
COMMIT;  

