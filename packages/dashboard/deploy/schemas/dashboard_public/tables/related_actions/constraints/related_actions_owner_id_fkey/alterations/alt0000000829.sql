-- Deploy: schemas/dashboard_public/tables/related_actions/constraints/related_actions_owner_id_fkey/alterations/alt0000000829 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/related_actions/constraints/related_actions_owner_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT related_actions_owner_id_fkey ON "dashboard_public".related_actions IS E'@omit manyToMany';
COMMIT;
