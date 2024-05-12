-- Deploy: schemas/dashboard_public/tables/action_variations/constraints/action_variations_owner_id_fkey/alterations/alt0000000796 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_variations/constraints/action_variations_owner_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT action_variations_owner_id_fkey ON "dashboard_public".action_variations IS E'@omit manyToMany';
COMMIT;
