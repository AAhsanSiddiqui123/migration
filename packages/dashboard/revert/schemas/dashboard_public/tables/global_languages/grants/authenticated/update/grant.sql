-- Revert: schemas/dashboard_public/tables/global_languages/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".global_languages FROM authenticated;
COMMIT;  

