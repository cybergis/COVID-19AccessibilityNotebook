#!/bin/bash
singularity build spacc.simg docker://alexandermichels/spatialaccessjob:0.0.1
singularity run \
    --bind /data/keeling/a/michels9/COVID-19AccessibilityNotebook/job_sub/app_vars.py:/myapp/app_vars.py \
    --bind /data/keeling/a/michels9/COVID-19AccessibilityNotebook/Data:/myapp/Data \
    --bind /data/keeling/a/michels9/COVID-19AccessibilityNotebook/results:/myapp/results \
    spacc.simg