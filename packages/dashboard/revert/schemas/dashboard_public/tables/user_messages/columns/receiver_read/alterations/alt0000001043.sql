-- Revert: schemas/dashboard_public/tables/user_messages/columns/receiver_read/alterations/alt0000001043 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_messages 
    ALTER COLUMN receiver_read DROP DEFAULT;

COMMIT;  

