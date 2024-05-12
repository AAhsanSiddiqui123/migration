-- Deploy: schemas/dashboard_public/tables/action_language_variations/constraints/action_language_variations_owner_id_fkey/alterations/alt0000001277 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_language_variations/constraints/action_language_variations_owner_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT action_language_variations_owner_id_fkey ON "dashboard_public".action_language_variations IS E'@omit manyToMany';
COMMIT;
