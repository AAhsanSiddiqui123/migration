-- Revert: schemas/dashboard_public/tables/question_template_language_variations/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".question_template_language_variations FROM authenticated;
COMMIT;  

