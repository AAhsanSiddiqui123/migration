-- Deploy: schemas/dashboard_public/tables/notifications/constraints/notifications_actor_id_fkey/alterations/alt0000001173 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/notifications/constraints/notifications_actor_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT notifications_actor_id_fkey ON "dashboard_public".notifications IS E'@omit manyToMany';
COMMIT;
