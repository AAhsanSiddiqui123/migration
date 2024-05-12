-- Revert: schemas/dashboard_public/tables/notifications/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".notifications FROM authenticated;
COMMIT;  

