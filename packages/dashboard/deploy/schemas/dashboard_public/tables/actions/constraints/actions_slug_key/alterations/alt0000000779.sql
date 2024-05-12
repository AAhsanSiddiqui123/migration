-- Deploy: schemas/dashboard_public/tables/actions/constraints/actions_slug_key/alterations/alt0000000779 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/actions/constraints/actions_slug_key/constraint

BEGIN;
COMMENT ON CONSTRAINT actions_slug_key ON "dashboard_public".actions IS NULL;
COMMIT;
