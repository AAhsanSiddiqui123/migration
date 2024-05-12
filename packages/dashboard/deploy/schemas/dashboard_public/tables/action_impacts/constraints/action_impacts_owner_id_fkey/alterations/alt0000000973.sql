-- Deploy: schemas/dashboard_public/tables/action_impacts/constraints/action_impacts_owner_id_fkey/alterations/alt0000000973 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_impacts/constraints/action_impacts_owner_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT action_impacts_owner_id_fkey ON "dashboard_public".action_impacts IS E'@omit manyToMany';
COMMIT;
