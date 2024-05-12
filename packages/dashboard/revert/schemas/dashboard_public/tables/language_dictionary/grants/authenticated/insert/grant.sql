-- Revert: schemas/dashboard_public/tables/language_dictionary/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".language_dictionary FROM authenticated;
COMMIT;  

