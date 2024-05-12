-- Revert: schemas/dashboard_limits_public/tables/app_limit_defaults/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_limits_public".app_limit_defaults FROM authenticated;
COMMIT;  

