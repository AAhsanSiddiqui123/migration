-- Revert: schemas/dashboard_public/tables/messages/constraints/messages_sender_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".messages 
    DROP CONSTRAINT messages_sender_id_fkey;

COMMIT;  

