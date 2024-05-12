-- Deploy: schemas/dashboard_public/tables/tags/constraints/tags_name_key/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/tags/table

BEGIN;

ALTER TABLE "dashboard_public".tags
    ADD CONSTRAINT tags_name_key UNIQUE (name);
COMMIT;
