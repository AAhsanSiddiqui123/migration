-- Deploy schemas/dashboard_public/tables/user_profiles/alterations/alter_table_add_progress_count to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_profiles/table

BEGIN;

ALTER TABLE dashboard_public.user_profiles
    ADD COLUMN progress_count numeric NULL;

COMMIT;
