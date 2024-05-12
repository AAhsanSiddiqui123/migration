-- Deploy schemas/dashboard_public/tables/progress_level_language_variations/table to pg

-- requires: schemas/dashboard_public/schema

BEGIN;

CREATE TABLE dashboard_public.progress_level_language_variations (
    id uuid PRIMARY KEY DEFAULT uuid_generate_v4 ()
  -- fields
);

COMMENT ON TABLE dashboard_public.progress_level_language_variations IS 'language variations';

COMMENT ON COLUMN dashboard_public.progress_level_language_variations.id IS 'The primary unique identifier for the progress_level_language_variations table.';

COMMIT;
