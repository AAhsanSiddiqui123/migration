-- Deploy: schemas/dashboard_memberships_public/tables/group_memberships/indexes/group_memberships_actor_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/group_memberships/table
-- requires: schemas/dashboard_memberships_public/tables/group_memberships/columns/actor_id/column

BEGIN;
CREATE INDEX group_memberships_actor_id_idx ON "dashboard_memberships_public".group_memberships (actor_id);
COMMIT;
