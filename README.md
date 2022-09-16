# Deployment of 3-tiered web application to managed K8s cluster on Amazon EKS.
1. Design, implement and deploy containerized applications to address cost optimization, high availability, and scalability requirements of business applications
2. Using containerization concept and its implementation on Linux OS to support efficient application releases cycle.
3. Evaluating the applicability of containerization approach and viability of publicly/privately hosted containers orchestration platform for the business needs of the organization.
4.  Analyzing security, observability, and operational challenges of modern cloud native serverless solutions.
5. Implementing application resources requirements for compute, storage and memory to ensure cost efficient utilization of cloud infrastructure
6. Implementing application deployment pipeline for containerized applications to cloud hosted and managed Kubernetes cluster to support business needs and to reduce time to market
7.  Evaluate and recommend networking, persistent storage, and IAM (Identity and Access Management) solutions to achieve the desired level of infrastructure and applications security.


# Architecture Diagram.

![image](https://user-images.githubusercontent.com/22864449/190554929-b0ceabf5-c8bd-404a-99e0-e3dcb2960aff.png)

#Enchanced Changes.

1. The background image is from private S3 bucket(AWS).
2. Enable logs to able to print background image URL.
3. Passed MySQL DB username and password to the Flask application as K8s secrets.
4. Flask Application listening on port 81.
5. Created Docker File and Docker image in cloud9 and tested locally and pushed to the ECR.
6. Pushed code to code github and created github action for unit test and created a updated version for every new push.
7. Created a amazon EKS cluster with 2 workers nodes.
8. Written k8s manifest files to deploy resources.
9. ConfigMap to provide the application with background image URL
10. Secret that holds MySQL DB username and password  
11. PersistentVolumeClaim based on gp2 default StorageClass
12. Deployed of MySQL DB with 1 replica and volume based on PVC.
13. Service that exposes MySQL DB to the Flask application.
14. Deployment of Flask application with 1 replica from the image stored in Amazon ECR.
15. Service that exposes the Flask application to the Internet users and has a stable endpoint. Choose the service type.



