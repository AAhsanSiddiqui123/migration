-- Deploy: schemas/dashboard_public/tables/user_answers/columns/is_private/alterations/alt0000001379 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_answers/table
-- requires: schemas/dashboard_public/tables/user_answers/columns/is_private/column

BEGIN;

ALTER TABLE "dashboard_public".user_answers 
    ALTER COLUMN is_private SET DEFAULT false;
COMMIT;
