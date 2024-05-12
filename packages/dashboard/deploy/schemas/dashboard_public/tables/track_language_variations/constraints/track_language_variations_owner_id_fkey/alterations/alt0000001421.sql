-- Deploy: schemas/dashboard_public/tables/track_language_variations/constraints/track_language_variations_owner_id_fkey/alterations/alt0000001421 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/track_language_variations/constraints/track_language_variations_owner_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT track_language_variations_owner_id_fkey ON "dashboard_public".track_language_variations IS E'@omit manyToMany';
COMMIT;
