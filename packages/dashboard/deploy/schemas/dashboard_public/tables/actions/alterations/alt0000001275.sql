-- Deploy: schemas/dashboard_public/tables/actions/alterations/alt0000001275 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/actions/table

BEGIN;
COMMENT ON TABLE "dashboard_public".actions IS E'@i18n action_language_variations';
COMMIT;
