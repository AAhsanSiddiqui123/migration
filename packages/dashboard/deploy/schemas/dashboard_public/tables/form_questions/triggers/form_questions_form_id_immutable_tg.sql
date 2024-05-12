-- Deploy: schemas/dashboard_public/tables/form_questions/triggers/form_questions_form_id_immutable_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/form_questions/table

BEGIN;
CREATE TRIGGER form_questions_form_id_immutable_tg 
 BEFORE UPDATE ON "dashboard_public".form_questions 
 FOR EACH ROW 
 WHEN (OLD.form_id IS DISTINCT FROM NEW.form_id AND old.form_id IS NOT NULL) 
 EXECUTE PROCEDURE utils.throw ( 'IMMUTABLE_PROPERTY', 'form_id' );
COMMIT;
