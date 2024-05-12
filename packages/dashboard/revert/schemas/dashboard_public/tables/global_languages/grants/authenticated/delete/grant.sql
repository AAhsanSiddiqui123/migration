-- Revert: schemas/dashboard_public/tables/global_languages/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".global_languages FROM authenticated;
COMMIT;  

