-- Deploy: schemas/dashboard_public/tables/user_answers/columns/complete/alterations/alt0000001380 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_answers/table
-- requires: schemas/dashboard_public/tables/user_answers/columns/complete/column

BEGIN;

ALTER TABLE "dashboard_public".user_answers 
    ALTER COLUMN complete SET DEFAULT false;
COMMIT;
