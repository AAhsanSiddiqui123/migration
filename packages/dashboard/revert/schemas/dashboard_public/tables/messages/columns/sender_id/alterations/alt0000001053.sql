-- Revert: schemas/dashboard_public/tables/messages/columns/sender_id/alterations/alt0000001053 from pg

BEGIN;


ALTER TABLE "dashboard_public".messages 
    ALTER COLUMN sender_id DROP NOT NULL;


COMMIT;  

