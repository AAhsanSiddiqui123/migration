-- Deploy: schemas/dashboard_public/tables/user_characteristics/columns/research_to_doer/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_characteristics/table

BEGIN;

ALTER TABLE "dashboard_public".user_characteristics ADD COLUMN research_to_doer smallint;
COMMIT;
