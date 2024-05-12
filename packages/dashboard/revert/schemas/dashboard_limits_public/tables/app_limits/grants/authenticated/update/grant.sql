-- Revert: schemas/dashboard_limits_public/tables/app_limits/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_limits_public".app_limits FROM authenticated;
COMMIT;  

