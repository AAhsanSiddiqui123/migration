-- Revert: schemas/dashboard_public/tables/app_constants/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".app_constants FROM authenticated;
COMMIT;  

