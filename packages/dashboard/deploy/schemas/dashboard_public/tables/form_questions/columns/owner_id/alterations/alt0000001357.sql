-- Deploy: schemas/dashboard_public/tables/form_questions/columns/owner_id/alterations/alt0000001357 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/form_questions/table
-- requires: schemas/dashboard_public/tables/form_questions/columns/owner_id/column

BEGIN;

ALTER TABLE "dashboard_public".form_questions 
    ALTER COLUMN owner_id SET DEFAULT uuid_nil();
COMMIT;
