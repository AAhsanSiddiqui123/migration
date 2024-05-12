-- Revert: schemas/dashboard_status_public/tables/app_level_requirements/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_status_public".app_level_requirements FROM authenticated;
COMMIT;  

