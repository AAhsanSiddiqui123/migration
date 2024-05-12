-- Revert: schemas/dashboard_public/tables/user_devices/columns/push_token/alterations/alt0000001159 from pg

BEGIN;
ALTER TABLE "dashboard_public".user_devices DROP CONSTRAINT user_devices_push_token_chk;
COMMIT;  

