-- Revert: schemas/dashboard_public/tables/user_devices/columns/push_token_requested/alterations/alt0000001160 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_devices 
    ALTER COLUMN push_token_requested DROP DEFAULT;

COMMIT;  

