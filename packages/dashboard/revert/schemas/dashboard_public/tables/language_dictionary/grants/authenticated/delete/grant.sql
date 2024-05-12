-- Revert: schemas/dashboard_public/tables/language_dictionary/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".language_dictionary FROM authenticated;
COMMIT;  

