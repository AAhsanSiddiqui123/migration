-- Revert: schemas/dashboard_public/tables/user_devices/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".user_devices
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

