.PHONY: helmcreate
helmcreate:
	cd helmchart && helm create hello-world

.PHONY: helmpkg
helmpkg:
	cd helmchart && helm package hello-world --debug

.PHONY: helminstall
helminstall:
	cd helmchart && helm install hello-world-0.1.0.tgz --name hello-world
	kubectl get svc --watch
	# wait for a IP

.PHONY: helmrepos
helmrepos:
	helm repo list
	#Public helm repo: https://kubernetes-charts.storage.googleapis.com

#List helm deployments
#helm list --all

#Delete helm install
#helm del --purge <rel-name>