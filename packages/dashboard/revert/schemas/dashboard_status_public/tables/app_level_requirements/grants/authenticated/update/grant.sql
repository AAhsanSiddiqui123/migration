-- Revert: schemas/dashboard_status_public/tables/app_level_requirements/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_status_public".app_level_requirements FROM authenticated;
COMMIT;  

