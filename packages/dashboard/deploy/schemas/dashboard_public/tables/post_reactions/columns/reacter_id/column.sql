-- Deploy: schemas/dashboard_public/tables/post_reactions/columns/reacter_id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/post_reactions/table

BEGIN;

ALTER TABLE "dashboard_public".post_reactions ADD COLUMN reacter_id uuid;
COMMIT;
