-- Deploy: schemas/dashboard_public/tables/user_forms/constraints/user_forms_user_action_id_fkey/alterations/alt0000001342 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_forms/constraints/user_forms_user_action_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT user_forms_user_action_id_fkey ON "dashboard_public".user_forms IS E'@omit manyToMany';
COMMIT;
