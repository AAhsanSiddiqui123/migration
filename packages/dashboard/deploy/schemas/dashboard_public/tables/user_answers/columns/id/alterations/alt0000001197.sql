-- Deploy: schemas/dashboard_public/tables/user_answers/columns/id/alterations/alt0000001197 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_answers/table
-- requires: schemas/dashboard_public/tables/user_answers/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".user_answers 
    ALTER COLUMN id SET NOT NULL;
COMMIT;
