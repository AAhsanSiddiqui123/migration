-- Verify: schemas/dashboard_public/tables/question_types/triggers/question_types_slug_immutable_tg on pg

BEGIN;
SELECT verify_trigger('dashboard_public.question_types_slug_immutable_tg');
COMMIT;  

