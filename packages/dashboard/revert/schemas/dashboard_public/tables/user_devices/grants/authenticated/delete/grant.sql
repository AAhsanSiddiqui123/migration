-- Revert: schemas/dashboard_public/tables/user_devices/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".user_devices FROM authenticated;
COMMIT;  

