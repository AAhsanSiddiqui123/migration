-- Deploy: schemas/dashboard_public/tables/actions/constraints/actions_owner_id_fkey/alterations/alt0000000781 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/actions/constraints/actions_owner_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT actions_owner_id_fkey ON "dashboard_public".actions IS E'@omit manyToMany';
COMMIT;
