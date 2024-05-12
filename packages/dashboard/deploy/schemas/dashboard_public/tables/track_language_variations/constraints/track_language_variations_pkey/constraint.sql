-- Deploy: schemas/dashboard_public/tables/track_language_variations/constraints/track_language_variations_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/track_language_variations/table

BEGIN;

ALTER TABLE "dashboard_public".track_language_variations
    ADD CONSTRAINT track_language_variations_pkey PRIMARY KEY (id);
COMMIT;
