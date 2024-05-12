-- Deploy: schemas/dashboard_memberships_public/tables/group_memberships/constraints/group_memberships_actor_id_entity_id_key/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/group_memberships/table

BEGIN;

ALTER TABLE "dashboard_memberships_public".group_memberships
    ADD CONSTRAINT group_memberships_actor_id_entity_id_key UNIQUE (actor_id,entity_id);
COMMIT;
