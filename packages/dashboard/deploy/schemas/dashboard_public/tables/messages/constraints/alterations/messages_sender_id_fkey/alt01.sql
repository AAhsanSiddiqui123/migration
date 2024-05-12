-- Deploy dashboard:schemas/dashboard_public/tables/messages/constraints/alterations/messages_sender_id_fkey/alt01 to pg

BEGIN;

ALTER TABLE "dashboard_public".messages 
    DROP CONSTRAINT messages_sender_id_fkey;

ALTER TABLE "dashboard_public".messages 
    ADD CONSTRAINT messages_sender_id_fkey 
    FOREIGN KEY (sender_id)
    REFERENCES "dashboard_public".users (id)
    ON DELETE SET NULL
    ON UPDATE NO ACTION;

COMMIT;
