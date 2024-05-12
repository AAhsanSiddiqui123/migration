-- Revert: schemas/dashboard_public/tables/zip_codes/grants/anonymous/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".zip_codes FROM anonymous;
COMMIT;  

