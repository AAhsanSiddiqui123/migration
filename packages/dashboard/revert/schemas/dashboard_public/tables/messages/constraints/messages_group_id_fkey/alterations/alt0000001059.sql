-- Revert: schemas/dashboard_public/tables/messages/constraints/messages_group_id_fkey/alterations/alt0000001059 from pg

BEGIN;
COMMENT ON CONSTRAINT messages_group_id_fkey ON "dashboard_public".messages IS NULL;
COMMIT;  

