-- Deploy: schemas/dashboard_public/tables/tags/constraints/tags_name_key/alterations/alt0000000983 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/tags/constraints/tags_name_key/constraint

BEGIN;
COMMENT ON CONSTRAINT tags_name_key ON "dashboard_public".tags IS NULL;
COMMIT;
