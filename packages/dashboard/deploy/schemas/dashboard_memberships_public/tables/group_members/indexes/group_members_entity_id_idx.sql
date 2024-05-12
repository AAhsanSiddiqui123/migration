-- Deploy: schemas/dashboard_memberships_public/tables/group_members/indexes/group_members_entity_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/group_members/table
-- requires: schemas/dashboard_memberships_public/tables/group_members/columns/entity_id/column

BEGIN;
CREATE INDEX group_members_entity_id_idx ON "dashboard_memberships_public".group_members (entity_id);
COMMIT;
