-- Revert: schemas/dashboard_public/tables/notifications/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".notifications FROM authenticated;
COMMIT;  

