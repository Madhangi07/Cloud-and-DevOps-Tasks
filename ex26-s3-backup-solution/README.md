\# Exercise 26 - S3 Backup Solution



\## Objective

Backup application files and configuration files to Amazon S3 and demonstrate restoration.



\## Files Used



\- app.py

\- config.yaml

\- deployment.yaml



\## Backup Commands



aws s3 cp app.py s3://madhangi-s3-backup-demo/



aws s3 cp config.yaml s3://madhangi-s3-backup-demo/



aws s3 cp deployment.yaml s3://madhangi-s3-backup-demo/



\## Restore Commands



aws s3 cp s3://madhangi-s3-backup-demo/app.py .



aws s3 cp s3://madhangi-s3-backup-demo/config.yaml .



aws s3 cp s3://madhangi-s3-backup-demo/deployment.yaml .



\## Outcome



Successfully backed up files to S3 and restored them after deletion.

