-- Verify: schemas/dashboard_public/tables/emails/triggers/emails_immutable_tg on pg

BEGIN;
SELECT verify_trigger('dashboard_public.emails_immutable_tg');
COMMIT;  

