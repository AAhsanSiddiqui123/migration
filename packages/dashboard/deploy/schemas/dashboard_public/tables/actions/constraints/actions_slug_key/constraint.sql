-- Deploy: schemas/dashboard_public/tables/actions/constraints/actions_slug_key/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/actions/table

BEGIN;

ALTER TABLE "dashboard_public".actions
    ADD CONSTRAINT actions_slug_key UNIQUE (slug);
COMMIT;
