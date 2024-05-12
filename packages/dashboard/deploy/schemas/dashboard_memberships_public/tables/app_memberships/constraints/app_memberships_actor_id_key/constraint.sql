-- Deploy: schemas/dashboard_memberships_public/tables/app_memberships/constraints/app_memberships_actor_id_key/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/app_memberships/table

BEGIN;

ALTER TABLE "dashboard_memberships_public".app_memberships
    ADD CONSTRAINT app_memberships_actor_id_key UNIQUE (actor_id);
COMMIT;
