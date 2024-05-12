-- Deploy: schemas/dashboard_public/tables/tracks/alterations/alt0000001419 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/tracks/table

BEGIN;
COMMENT ON TABLE "dashboard_public".tracks IS E'@i18n track_language_variations';
COMMIT;
