-- Revert: schemas/dashboard_public/tables/user_question_language_variations/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".user_question_language_variations FROM authenticated;
COMMIT;  

