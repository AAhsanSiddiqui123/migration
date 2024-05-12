-- Deploy: schemas/dashboard_public/tables/user_questions/columns/is_reusable/alterations/alt0000001376 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_questions/table
-- requires: schemas/dashboard_public/tables/user_questions/columns/is_reusable/column

BEGIN;

ALTER TABLE "dashboard_public".user_questions 
    ALTER COLUMN is_reusable SET DEFAULT false;
COMMIT;
