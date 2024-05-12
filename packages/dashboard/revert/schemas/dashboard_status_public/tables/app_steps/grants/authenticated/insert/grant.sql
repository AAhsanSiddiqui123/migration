-- Revert: schemas/dashboard_status_public/tables/app_steps/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_status_public".app_steps FROM authenticated;
COMMIT;  

