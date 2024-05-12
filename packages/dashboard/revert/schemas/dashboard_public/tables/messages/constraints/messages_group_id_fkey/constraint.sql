-- Revert: schemas/dashboard_public/tables/messages/constraints/messages_group_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".messages 
    DROP CONSTRAINT messages_group_id_fkey;

COMMIT;  

