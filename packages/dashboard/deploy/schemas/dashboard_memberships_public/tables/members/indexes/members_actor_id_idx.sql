-- Deploy: schemas/dashboard_memberships_public/tables/members/indexes/members_actor_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/members/table
-- requires: schemas/dashboard_memberships_public/tables/members/columns/actor_id/column

BEGIN;
CREATE INDEX members_actor_id_idx ON "dashboard_memberships_public".members (actor_id);
COMMIT;
