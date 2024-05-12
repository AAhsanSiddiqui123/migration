-- Revert: schemas/dashboard_public/tables/language_dictionary/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".language_dictionary FROM authenticated;
COMMIT;  

