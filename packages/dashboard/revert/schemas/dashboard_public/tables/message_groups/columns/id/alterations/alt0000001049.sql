-- Revert: schemas/dashboard_public/tables/message_groups/columns/id/alterations/alt0000001049 from pg

BEGIN;


ALTER TABLE "dashboard_public".message_groups 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

