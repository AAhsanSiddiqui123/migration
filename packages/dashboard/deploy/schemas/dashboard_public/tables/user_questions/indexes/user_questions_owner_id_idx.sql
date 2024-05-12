-- Deploy: schemas/dashboard_public/tables/user_questions/indexes/user_questions_owner_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_questions/table
-- requires: schemas/dashboard_public/tables/user_questions/columns/owner_id/column

BEGIN;
CREATE INDEX user_questions_owner_id_idx ON "dashboard_public".user_questions (owner_id);
COMMIT;
