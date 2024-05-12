-- Deploy: schemas/dashboard_public/tables/data_tags/constraints/data_tags_name_key/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/data_tags/table

BEGIN;

ALTER TABLE "dashboard_public".data_tags
    ADD CONSTRAINT data_tags_name_key UNIQUE (name);
COMMIT;
