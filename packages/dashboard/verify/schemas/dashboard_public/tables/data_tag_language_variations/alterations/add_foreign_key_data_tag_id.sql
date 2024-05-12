-- Verify schemas/dashboard_public/tables/data_tag_language_variations/alterations/add_foreign_key_data_tag_id  on pg

BEGIN;

SELECT verify_constraint('dashboard_public.data_tag_language_variations', 'fk_dashboard_public_data_tag_language_variations_data_tag_id');

ROLLBACK;
