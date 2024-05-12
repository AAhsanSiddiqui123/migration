-- Deploy: schemas/dashboard_memberships_public/tables/memberships/constraints/memberships_actor_id_entity_id_key/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/memberships/table

BEGIN;

ALTER TABLE "dashboard_memberships_public".memberships
    ADD CONSTRAINT memberships_actor_id_entity_id_key UNIQUE (actor_id,entity_id);
COMMIT;
