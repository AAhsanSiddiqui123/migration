-- Revert: schemas/dashboard_permissions_public/tables/membership_permissions/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_permissions_public".membership_permissions FROM authenticated;
COMMIT;  

