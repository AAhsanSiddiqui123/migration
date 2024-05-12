-- Revert: schemas/dashboard_public/tables/question_value_language_variations/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".question_value_language_variations FROM authenticated;
COMMIT;  

