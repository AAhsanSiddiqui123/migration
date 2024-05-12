-- Deploy: schemas/dashboard_public/tables/impact_language_variations/constraints/impact_language_variations_impact_id_fkey/alterations/alt0000001462 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/impact_language_variations/constraints/impact_language_variations_impact_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT impact_language_variations_impact_id_fkey ON "dashboard_public".impact_language_variations IS E'@omit manyToMany';
COMMIT;
