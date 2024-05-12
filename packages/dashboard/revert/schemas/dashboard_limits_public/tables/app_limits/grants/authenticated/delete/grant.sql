-- Revert: schemas/dashboard_limits_public/tables/app_limits/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_limits_public".app_limits FROM authenticated;
COMMIT;  

