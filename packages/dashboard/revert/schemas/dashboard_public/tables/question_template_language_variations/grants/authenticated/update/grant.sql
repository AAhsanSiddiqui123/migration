-- Revert: schemas/dashboard_public/tables/question_template_language_variations/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".question_template_language_variations FROM authenticated;
COMMIT;  

