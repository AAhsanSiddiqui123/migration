-- Revert: schemas/dashboard_public/tables/language_dictionary/grants/anonymous/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".language_dictionary FROM anonymous;
COMMIT;  

