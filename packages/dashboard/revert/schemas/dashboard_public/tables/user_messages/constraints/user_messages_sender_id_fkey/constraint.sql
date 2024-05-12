-- Revert: schemas/dashboard_public/tables/user_messages/constraints/user_messages_sender_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".user_messages 
    DROP CONSTRAINT user_messages_sender_id_fkey;

COMMIT;  

