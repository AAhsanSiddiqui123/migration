-- Revert: schemas/dashboard_public/tables/form_types/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".form_types FROM authenticated;
COMMIT;  

