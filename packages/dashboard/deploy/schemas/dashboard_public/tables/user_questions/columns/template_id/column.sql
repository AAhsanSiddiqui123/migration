-- Deploy: schemas/dashboard_public/tables/user_questions/columns/template_id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_questions/table

BEGIN;

ALTER TABLE "dashboard_public".user_questions ADD COLUMN template_id uuid;
COMMIT;
