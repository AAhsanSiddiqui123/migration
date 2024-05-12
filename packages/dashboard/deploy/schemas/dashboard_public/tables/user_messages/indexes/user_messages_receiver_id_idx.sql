-- Deploy: schemas/dashboard_public/tables/user_messages/indexes/user_messages_receiver_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_messages/table
-- requires: schemas/dashboard_public/tables/user_messages/columns/receiver_id/column

BEGIN;
CREATE INDEX user_messages_receiver_id_idx ON "dashboard_public".user_messages (receiver_id);
COMMIT;
