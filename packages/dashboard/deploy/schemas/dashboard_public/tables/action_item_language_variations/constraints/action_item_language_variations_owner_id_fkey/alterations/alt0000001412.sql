-- Deploy: schemas/dashboard_public/tables/action_item_language_variations/constraints/action_item_language_variations_owner_id_fkey/alterations/alt0000001412 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_item_language_variations/constraints/action_item_language_variations_owner_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT action_item_language_variations_owner_id_fkey ON "dashboard_public".action_item_language_variations IS E'@omit manyToMany';
COMMIT;
