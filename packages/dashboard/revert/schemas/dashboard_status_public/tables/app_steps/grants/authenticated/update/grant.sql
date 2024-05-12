-- Revert: schemas/dashboard_status_public/tables/app_steps/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_status_public".app_steps FROM authenticated;
COMMIT;  

