-- Deploy: schemas/dashboard_public/tables/user_messages/indexes/user_messages_sender_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_messages/table
-- requires: schemas/dashboard_public/tables/user_messages/columns/sender_id/column

BEGIN;
CREATE INDEX user_messages_sender_id_idx ON "dashboard_public".user_messages (sender_id);
COMMIT;
