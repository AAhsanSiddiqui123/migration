-- Deploy: schemas/dashboard_public/tables/user_answers/alterations/alt0000001196 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_answers/table

BEGIN;

ALTER TABLE "dashboard_public".user_answers
    DISABLE ROW LEVEL SECURITY;
COMMIT;
