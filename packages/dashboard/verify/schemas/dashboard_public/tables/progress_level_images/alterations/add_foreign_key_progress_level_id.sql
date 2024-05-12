-- Verify schemas/dashboard_public/tables/progress_level_images/alterations/add_foreign_key_progress_level_id  on pg

BEGIN;

SELECT verify_constraint('dashboard_public.progress_level_images', 'fk_dashboard_public_progress_level_images_progress_level_id');

ROLLBACK;
