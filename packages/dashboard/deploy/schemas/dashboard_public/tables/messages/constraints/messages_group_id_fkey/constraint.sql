-- Deploy: schemas/dashboard_public/tables/messages/constraints/messages_group_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/messages/table
-- requires: schemas/dashboard_public/tables/message_groups/table
-- requires: schemas/dashboard_public/tables/message_groups/columns/id/column
-- requires: schemas/dashboard_public/tables/messages/columns/group_id/column

BEGIN;

ALTER TABLE "dashboard_public".messages 
    ADD CONSTRAINT messages_group_id_fkey 
    FOREIGN KEY (group_id)
    REFERENCES "dashboard_public".message_groups (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
