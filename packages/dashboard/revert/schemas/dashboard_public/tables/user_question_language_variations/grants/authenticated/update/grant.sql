-- Revert: schemas/dashboard_public/tables/user_question_language_variations/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".user_question_language_variations FROM authenticated;
COMMIT;  

