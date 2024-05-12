-- Deploy: schemas/dashboard_public/tables/form_types/columns/slug/alterations/alt0000001305 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/form_types/table
-- requires: schemas/dashboard_public/tables/form_types/columns/slug/column

BEGIN;
ALTER TABLE "dashboard_public".form_types ADD CONSTRAINT form_types_slug_chk CHECK (character_length(slug) <= 2048);
COMMIT;
