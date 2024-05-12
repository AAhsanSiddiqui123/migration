-- Deploy: schemas/dashboard_public/tables/user_answers/columns/user_form_id/alterations/alt0000001362 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_answers/table
-- requires: schemas/dashboard_public/tables/user_answers/columns/user_form_id/column

BEGIN;

ALTER TABLE "dashboard_public".user_answers 
    ALTER COLUMN user_form_id SET NOT NULL;
COMMIT;
