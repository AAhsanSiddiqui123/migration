-- Revert: schemas/dashboard_public/tables/user_settings/alterations/alt0000000571 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_settings
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

