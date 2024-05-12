-- Deploy: schemas/dashboard_public/tables/user_questions/columns/is_required/alterations/alt0000001368 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_questions/table
-- requires: schemas/dashboard_public/tables/user_questions/columns/is_required/column

BEGIN;

UPDATE "dashboard_public".user_questions SET is_required = false where is_required IS NULL;

ALTER TABLE "dashboard_public".user_questions 
    ALTER COLUMN is_required SET NOT NULL;

COMMIT;
