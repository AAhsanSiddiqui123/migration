-- Deploy: schemas/dashboard_public/tables/user_questions/columns/owner_id/alterations/alt0000001193 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_questions/table
-- requires: schemas/dashboard_public/tables/user_questions/columns/owner_id/column

BEGIN;

ALTER TABLE "dashboard_public".user_questions 
    ALTER COLUMN owner_id SET NOT NULL;
COMMIT;
