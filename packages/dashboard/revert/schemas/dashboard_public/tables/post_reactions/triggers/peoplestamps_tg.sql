-- Revert: schemas/dashboard_public/tables/post_reactions/triggers/peoplestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".post_reactions DROP COLUMN created_by;
ALTER TABLE "dashboard_public".post_reactions DROP COLUMN updated_by;

DROP TRIGGER peoplestamps_tg
ON "dashboard_public".post_reactions;


COMMIT;  

