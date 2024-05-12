-- Revert: schemas/dashboard_public/tables/notification_preferences/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".notification_preferences FROM authenticated;
COMMIT;  

