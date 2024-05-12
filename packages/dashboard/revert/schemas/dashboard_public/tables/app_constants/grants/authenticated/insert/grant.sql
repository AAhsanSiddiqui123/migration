-- Revert: schemas/dashboard_public/tables/app_constants/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".app_constants FROM authenticated;
COMMIT;  

