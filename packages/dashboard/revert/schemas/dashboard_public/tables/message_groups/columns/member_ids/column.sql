-- Revert: schemas/dashboard_public/tables/message_groups/columns/member_ids/column from pg

BEGIN;


ALTER TABLE "dashboard_public".message_groups DROP COLUMN member_ids;
COMMIT;  

