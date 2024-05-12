-- Deploy: schemas/dashboard_public/tables/user_answers/indexes/user_answers_user_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_answers/table
-- requires: schemas/dashboard_public/tables/user_answers/columns/user_id/column

BEGIN;
CREATE INDEX user_answers_user_id_idx ON "dashboard_public".user_answers (user_id);
COMMIT;
