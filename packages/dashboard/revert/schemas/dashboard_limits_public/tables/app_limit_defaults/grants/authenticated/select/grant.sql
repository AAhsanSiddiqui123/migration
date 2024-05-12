-- Revert: schemas/dashboard_limits_public/tables/app_limit_defaults/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_limits_public".app_limit_defaults FROM authenticated;
COMMIT;  

