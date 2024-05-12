-- Revert: schemas/dashboard_public/tables/user_question_language_variations/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".user_question_language_variations FROM authenticated;
COMMIT;  

