-- Revert: schemas/dashboard_public/tables/notification_preferences/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".notification_preferences FROM authenticated;
COMMIT;  

