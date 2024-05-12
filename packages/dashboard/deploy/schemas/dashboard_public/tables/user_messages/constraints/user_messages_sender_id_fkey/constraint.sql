-- Deploy: schemas/dashboard_public/tables/user_messages/constraints/user_messages_sender_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/users/table
-- requires: schemas/dashboard_public/tables/user_messages/table
-- requires: schemas/dashboard_public/tables/users/columns/id/column
-- requires: schemas/dashboard_public/tables/user_messages/columns/sender_id/column

BEGIN;

ALTER TABLE "dashboard_public".user_messages 
    ADD CONSTRAINT user_messages_sender_id_fkey 
    FOREIGN KEY (sender_id)
    REFERENCES "dashboard_public".users (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
