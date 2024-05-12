-- Revert: schemas/dashboard_public/tables/messages/constraints/messages_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".messages 
    DROP CONSTRAINT messages_pkey;

COMMIT;  

