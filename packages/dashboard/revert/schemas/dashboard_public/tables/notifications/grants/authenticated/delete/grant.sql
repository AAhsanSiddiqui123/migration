-- Revert: schemas/dashboard_public/tables/notifications/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".notifications FROM authenticated;
COMMIT;  

