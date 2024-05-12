-- Deploy: schemas/dashboard_public/tables/user_answers/columns/owner_id/alterations/alt0000001204 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_answers/table
-- requires: schemas/dashboard_public/tables/user_answers/columns/owner_id/column

BEGIN;

ALTER TABLE "dashboard_public".user_answers 
    ALTER COLUMN owner_id SET NOT NULL;
COMMIT;
