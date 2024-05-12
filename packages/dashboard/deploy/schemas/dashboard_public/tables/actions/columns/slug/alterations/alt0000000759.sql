-- Deploy: schemas/dashboard_public/tables/actions/columns/slug/alterations/alt0000000759 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/actions/table
-- requires: schemas/dashboard_public/tables/actions/columns/slug/column

BEGIN;
ALTER TABLE "dashboard_public".actions ADD CONSTRAINT actions_slug_chk CHECK (character_length(slug) <= 2048);
COMMIT;
