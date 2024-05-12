-- Deploy: schemas/dashboard_public/tables/messages/indexes/messages_group_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/messages/table
-- requires: schemas/dashboard_public/tables/messages/columns/group_id/column

BEGIN;
CREATE INDEX messages_group_id_idx ON "dashboard_public".messages (group_id);
COMMIT;
