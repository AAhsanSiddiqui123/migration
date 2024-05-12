-- Deploy: schemas/dashboard_public/tables/impact_language_variations/constraints/impact_language_variations_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/impact_language_variations/table

BEGIN;

ALTER TABLE "dashboard_public".impact_language_variations
    ADD CONSTRAINT impact_language_variations_pkey PRIMARY KEY (id);
COMMIT;
