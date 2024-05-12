-- Revert: schemas/dashboard_status_public/tables/app_level_requirements/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_status_public".app_level_requirements FROM authenticated;
COMMIT;  

