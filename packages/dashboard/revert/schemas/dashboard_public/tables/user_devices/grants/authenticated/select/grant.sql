-- Revert: schemas/dashboard_public/tables/user_devices/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".user_devices FROM authenticated;
COMMIT;  

