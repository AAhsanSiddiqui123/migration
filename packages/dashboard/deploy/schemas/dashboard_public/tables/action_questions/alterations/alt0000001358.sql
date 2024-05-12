-- Deploy: schemas/dashboard_public/tables/action_questions/alterations/alt0000001358 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema

BEGIN;

DROP TABLE IF EXISTS "dashboard_public".action_questions CASCADE;
COMMIT;
