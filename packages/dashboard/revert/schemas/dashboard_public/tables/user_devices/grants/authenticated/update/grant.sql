-- Revert: schemas/dashboard_public/tables/user_devices/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".user_devices FROM authenticated;
COMMIT;  

