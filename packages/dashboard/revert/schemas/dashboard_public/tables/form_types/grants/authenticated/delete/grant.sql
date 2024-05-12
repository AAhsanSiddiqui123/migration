-- Revert: schemas/dashboard_public/tables/form_types/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".form_types FROM authenticated;
COMMIT;  

