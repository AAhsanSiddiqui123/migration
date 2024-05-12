-- Revert: schemas/dashboard_public/tables/form_types/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".form_types FROM authenticated;
COMMIT;  

