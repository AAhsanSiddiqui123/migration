-- Revert: schemas/dashboard_status_public/tables/app_steps/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_status_public".app_steps FROM authenticated;
COMMIT;  

