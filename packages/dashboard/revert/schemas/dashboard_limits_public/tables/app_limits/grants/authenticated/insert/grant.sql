-- Revert: schemas/dashboard_limits_public/tables/app_limits/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_limits_public".app_limits FROM authenticated;
COMMIT;  

