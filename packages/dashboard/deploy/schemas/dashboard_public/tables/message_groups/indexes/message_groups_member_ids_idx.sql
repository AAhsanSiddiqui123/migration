-- Deploy: schemas/dashboard_public/tables/message_groups/indexes/message_groups_member_ids_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/message_groups/table
-- requires: schemas/dashboard_public/tables/message_groups/columns/member_ids/column

BEGIN;
CREATE INDEX message_groups_member_ids_idx ON "dashboard_public".message_groups (member_ids);
COMMIT;
