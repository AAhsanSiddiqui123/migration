-- Revert: schemas/dashboard_public/tables/question_template_language_variations/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".question_template_language_variations FROM authenticated;
COMMIT;  

