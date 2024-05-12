-- Revert: schemas/dashboard_public/tables/notification_preferences/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".notification_preferences FROM authenticated;
COMMIT;  

