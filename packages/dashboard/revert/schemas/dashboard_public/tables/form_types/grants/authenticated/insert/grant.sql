-- Revert: schemas/dashboard_public/tables/form_types/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".form_types FROM authenticated;
COMMIT;  

