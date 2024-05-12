-- Revert: schemas/dashboard_public/tables/notification_preferences/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".notification_preferences FROM authenticated;
COMMIT;  

