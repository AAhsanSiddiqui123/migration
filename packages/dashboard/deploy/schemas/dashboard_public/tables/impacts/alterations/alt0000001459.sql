-- Deploy: schemas/dashboard_public/tables/impacts/alterations/alt0000001459 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/impacts/table

BEGIN;
COMMENT ON TABLE "dashboard_public".impacts IS E'@i18n impact_language_variations';
COMMIT;
