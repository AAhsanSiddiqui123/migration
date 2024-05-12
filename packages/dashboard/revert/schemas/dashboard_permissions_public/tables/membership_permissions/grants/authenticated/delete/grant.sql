-- Revert: schemas/dashboard_permissions_public/tables/membership_permissions/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_permissions_public".membership_permissions FROM authenticated;
COMMIT;  

