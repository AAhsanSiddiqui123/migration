-- Deploy: schemas/dashboard_public/tables/form_questions/columns/is_required/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/form_questions/table

BEGIN;

ALTER TABLE "dashboard_public".form_questions ADD COLUMN is_required boolean;
COMMIT;
