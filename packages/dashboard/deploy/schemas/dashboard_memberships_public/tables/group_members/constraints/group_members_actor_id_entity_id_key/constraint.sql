-- Deploy: schemas/dashboard_memberships_public/tables/group_members/constraints/group_members_actor_id_entity_id_key/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/group_members/table

BEGIN;

ALTER TABLE "dashboard_memberships_public".group_members
    ADD CONSTRAINT group_members_actor_id_entity_id_key UNIQUE (actor_id,entity_id);
COMMIT;
