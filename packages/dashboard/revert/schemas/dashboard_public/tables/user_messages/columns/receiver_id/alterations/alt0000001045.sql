-- Revert: schemas/dashboard_public/tables/user_messages/columns/receiver_id/alterations/alt0000001045 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_messages 
    ALTER COLUMN receiver_id DROP NOT NULL;


COMMIT;  

