-- Deploy schemas/dashboard_public/tables/progress_levels/table to pg

-- requires: schemas/dashboard_public/schema

BEGIN;

CREATE TABLE dashboard_public.progress_levels (
    id uuid PRIMARY KEY DEFAULT uuid_generate_v4 ()
  -- fields
);

COMMENT ON TABLE dashboard_public.progress_levels IS '@i18n progress_level_language_variations';

COMMENT ON COLUMN dashboard_public.progress_levels.id IS 'The primary unique identifier for the progress_levels table.';

COMMIT;
