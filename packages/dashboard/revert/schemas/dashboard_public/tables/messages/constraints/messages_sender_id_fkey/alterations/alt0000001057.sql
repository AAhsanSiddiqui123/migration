-- Revert: schemas/dashboard_public/tables/messages/constraints/messages_sender_id_fkey/alterations/alt0000001057 from pg

BEGIN;
COMMENT ON CONSTRAINT messages_sender_id_fkey ON "dashboard_public".messages IS NULL;
COMMIT;  

