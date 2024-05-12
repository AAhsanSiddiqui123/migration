-- Deploy: schemas/dashboard_public/tables/goals/columns/slug/alterations/alt0000000740 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/goals/table
-- requires: schemas/dashboard_public/tables/goals/columns/slug/column

BEGIN;
ALTER TABLE "dashboard_public".goals ADD CONSTRAINT goals_slug_chk CHECK (character_length(slug) <= 2048);
COMMIT;
