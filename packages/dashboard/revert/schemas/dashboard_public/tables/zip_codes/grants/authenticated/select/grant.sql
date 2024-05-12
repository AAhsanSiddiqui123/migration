-- Revert: schemas/dashboard_public/tables/zip_codes/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".zip_codes FROM authenticated;
COMMIT;  

