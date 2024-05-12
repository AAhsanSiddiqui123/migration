-- Revert: schemas/dashboard_public/tables/message_groups/constraints/message_groups_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".message_groups 
    DROP CONSTRAINT message_groups_pkey;

COMMIT;  

