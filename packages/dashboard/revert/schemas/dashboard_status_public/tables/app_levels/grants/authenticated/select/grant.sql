-- Revert: schemas/dashboard_status_public/tables/app_levels/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_status_public".app_levels FROM authenticated;
COMMIT;  

