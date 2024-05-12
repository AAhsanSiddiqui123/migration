-- Revert: schemas/dashboard_public/tables/language_dictionary/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".language_dictionary FROM authenticated;
COMMIT;  

