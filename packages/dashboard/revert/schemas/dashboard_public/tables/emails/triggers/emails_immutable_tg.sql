-- Revert: schemas/dashboard_public/tables/emails/triggers/emails_immutable_tg from pg

BEGIN;
DROP TRIGGER emails_immutable_tg ON "dashboard_public".emails;
COMMIT;  

