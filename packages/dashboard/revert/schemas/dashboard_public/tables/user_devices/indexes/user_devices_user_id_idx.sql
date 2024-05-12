-- Revert: schemas/dashboard_public/tables/user_devices/indexes/user_devices_user_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".user_devices_user_id_idx;
COMMIT;  

