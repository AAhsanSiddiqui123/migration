-- Revert: schemas/dashboard_public/tables/notification_preferences/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".notification_preferences
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

