-- Deploy: schemas/dashboard_public/tables/user_answers/constraints/user_answers_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_answers/table

BEGIN;

ALTER TABLE "dashboard_public".user_answers
    ADD CONSTRAINT user_answers_pkey PRIMARY KEY (id);
COMMIT;
