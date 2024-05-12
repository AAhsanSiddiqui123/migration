-- Revert: schemas/dashboard_public/tables/global_languages/grants/anonymous/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".global_languages FROM anonymous;
COMMIT;  

