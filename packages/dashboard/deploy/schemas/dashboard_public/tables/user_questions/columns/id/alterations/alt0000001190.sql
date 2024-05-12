-- Deploy: schemas/dashboard_public/tables/user_questions/columns/id/alterations/alt0000001190 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_questions/table
-- requires: schemas/dashboard_public/tables/user_questions/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".user_questions 
    ALTER COLUMN id SET NOT NULL;
COMMIT;
