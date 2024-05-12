-- Deploy dashboard:schemas/dashboard_public/tables/progress_levels/constraints/name_uniquekey to pg

BEGIN;

ALTER TABLE dashboard_public.progress_levels
ADD CONSTRAINT progress_levels_name_key UNIQUE (name);

COMMIT;
