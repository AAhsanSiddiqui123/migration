-- Revert: schemas/dashboard_public/tables/group_post_reactions/triggers/peoplestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".group_post_reactions DROP COLUMN created_by;
ALTER TABLE "dashboard_public".group_post_reactions DROP COLUMN updated_by;

DROP TRIGGER peoplestamps_tg
ON "dashboard_public".group_post_reactions;


COMMIT;  

