-- Revert: schemas/dashboard_public/tables/notifications/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".notifications FROM authenticated;
COMMIT;  

