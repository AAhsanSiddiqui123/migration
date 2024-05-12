-- Deploy: schemas/dashboard_memberships_public/tables/members/constraints/members_actor_id_entity_id_key/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/members/table

BEGIN;

ALTER TABLE "dashboard_memberships_public".members
    ADD CONSTRAINT members_actor_id_entity_id_key UNIQUE (actor_id,entity_id);
COMMIT;
