-- Revert: schemas/dashboard_public/tables/user_messages/constraints/user_messages_sender_id_fkey/alterations/alt0000001044 from pg

BEGIN;
COMMENT ON CONSTRAINT user_messages_sender_id_fkey ON "dashboard_public".user_messages IS NULL;
COMMIT;  

