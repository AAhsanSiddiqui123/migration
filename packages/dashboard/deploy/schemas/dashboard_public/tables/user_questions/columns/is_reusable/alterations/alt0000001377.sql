-- Deploy: schemas/dashboard_public/tables/user_questions/columns/is_reusable/alterations/alt0000001377 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_questions/columns/is_reusable/column

BEGIN;
COMMENT ON COLUMN "dashboard_public".user_questions.is_reusable IS E'for recurring if value can be re-used';
COMMIT;
