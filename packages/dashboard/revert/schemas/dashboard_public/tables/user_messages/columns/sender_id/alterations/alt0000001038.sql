-- Revert: schemas/dashboard_public/tables/user_messages/columns/sender_id/alterations/alt0000001038 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_messages 
    ALTER COLUMN sender_id DROP NOT NULL;


COMMIT;  

