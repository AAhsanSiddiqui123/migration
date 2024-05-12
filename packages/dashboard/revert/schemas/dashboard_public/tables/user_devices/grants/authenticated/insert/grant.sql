-- Revert: schemas/dashboard_public/tables/user_devices/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".user_devices FROM authenticated;
COMMIT;  

