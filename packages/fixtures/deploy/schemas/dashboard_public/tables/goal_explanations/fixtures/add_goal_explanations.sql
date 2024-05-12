
-- Deploy schemas/dashboard_public/tables/goal_explanations/fixtures/add_goal_explanations to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/goal_explanations/table
-- requires: schemas/dashboard_public/tables/goals/fixtures/add_goals 

BEGIN;

INSERT INTO dashboard_public.goal_explanations ( goal_id, audio, audio_duration, explanation_title, explanation ) VALUES ('668328e3-0746-59df-88ab-4a7e62eaa0f2', '{"url":"https://dl.airtable.com/.attachments/977fcf4a9606ab60004d3cf11d6d4e42/a25b600f/Capturewater.mp3","filename":"Capture water.mp3","size":570327,"mime":"audio/mpeg"}'::jsonb, '180 seconds', 'WHY DOES THIS MATTER?', 'By capturing, filtering, and storing rainwater we can have safe, healthy and abundant water source. 
');

INSERT INTO dashboard_public.goal_explanations ( goal_id, audio, audio_duration, explanation_title, explanation ) VALUES ('df875ca1-04ba-52b4-93ef-92a8c318cc9c', '{"url":"https://dl.airtable.com/.attachments/ca11a480e6de114ee396bca5ea0534b4/e9b9e5a8/StewardLand.mp3","filename":"Steward Land.mp3","size":552398,"mime":"audio/mpeg"}'::jsonb, '180 seconds', 'WHY DOES THIS MATTER?', 'L.A is a internationally recognized hotspot for biodiversity and L.A.''s goal is to keep it all safe. ');

INSERT INTO dashboard_public.goal_explanations ( goal_id, audio, audio_duration, explanation_title, explanation ) VALUES ('c64fce9c-63af-5d8b-a4d5-cde77161a6e8', '{"url":"https://dl.airtable.com/.attachments/8aa48b302bbc00249020944e94818526/3fa31512/KeepLACool.mp3","filename":"Keep LA Cool.mp3","size":468158,"mime":"audio/mpeg"}'::jsonb, '180 seconds', 'WHY DOES THIS MATTER?', 'Our endless summers have become unbearably hot, threatening our lives and intensifying climate change');

COMMIT;
