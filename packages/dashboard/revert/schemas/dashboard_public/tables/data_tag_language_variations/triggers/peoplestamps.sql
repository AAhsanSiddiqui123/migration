-- Revert schemas/dashboard_public/tables/data_tag_language_variations/triggers/peoplestamps from pg

BEGIN;

ALTER TABLE dashboard_public.data_tag_language_variations DROP COLUMN created_by;
ALTER TABLE dashboard_public.data_tag_language_variations DROP COLUMN updated_by;
DROP TRIGGER update_dashboard_public_data_tag_language_variations_moduser ON dashboard_public.data_tag_language_variations;

COMMIT;
