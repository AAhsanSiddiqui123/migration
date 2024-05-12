-- Revert: schemas/dashboard_public/tables/global_languages/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".global_languages FROM authenticated;
COMMIT;  

