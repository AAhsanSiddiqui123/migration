-- Revert: schemas/dashboard_public/tables/app_constants/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".app_constants FROM authenticated;
COMMIT;  

