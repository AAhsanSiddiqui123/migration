-- Revert: schemas/dashboard_public/tables/question_value_language_variations/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".question_value_language_variations FROM authenticated;
COMMIT;  

