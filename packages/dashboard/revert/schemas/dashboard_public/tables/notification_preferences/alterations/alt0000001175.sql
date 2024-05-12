-- Revert: schemas/dashboard_public/tables/notification_preferences/alterations/alt0000001175 from pg

BEGIN;


ALTER TABLE "dashboard_public".notification_preferences
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

