-- Revert: schemas/dashboard_public/tables/app_constants/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".app_constants FROM authenticated;
COMMIT;  

