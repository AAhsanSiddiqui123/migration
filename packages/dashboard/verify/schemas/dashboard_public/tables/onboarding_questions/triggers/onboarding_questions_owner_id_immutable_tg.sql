-- Verify: schemas/dashboard_public/tables/onboarding_questions/triggers/onboarding_questions_owner_id_immutable_tg on pg

BEGIN;
SELECT verify_trigger('dashboard_public.onboarding_questions_owner_id_immutable_tg');
COMMIT;  

