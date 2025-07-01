React Appliaction Run In local
npm start

npm run build


#Git Commands

-git status

-git add .

-git commit -m 'some message'

-git push origin main

-git merge origin/branch-name

-git checkout -b branch-name

#git Actions
In your GitHub repo:

Go to Settings → Secrets and variables → Actions

    Add new Secret:
    Name: GCP_SA_KEY        Value: JSON File data
    Name: GCP_PROJECT_ID    Value: project_id

Service Account Key in GCP
-Create Service-Acount with Following Permissions
    -Artifact Registry Writer
    -Cloud Run Admin
    -Service Account User
    -Storage Admin

We Need to Enable
Artifact Registry API: https://console.cloud.google.com/apis/library/artifactregistry.googleapis.com?project=deploymentautomation-test&inv=1&invt=Ab1mKw

Cloud Run Admin API: https://console.cloud.google.com/apis/api/run.googleapis.com/metrics?project=deploymentautomation-test&inv=1&invt=Ab1mNQ


For First time: Run in Terminal
gcloud artifacts repositories create react-repo \
  --repository-format=docker \
  --location=us-central1 \
  --project=deploymentautomation-test \
  --description="Docker repository for React app"



  