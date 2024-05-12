-- Deploy: schemas/dashboard_public/tables/form_types/constraints/form_types_slug_key/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/form_types/table

BEGIN;

ALTER TABLE "dashboard_public".form_types
    ADD CONSTRAINT form_types_slug_key UNIQUE (slug);
COMMIT;
