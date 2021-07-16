

apply:
	kubectl create ns istio-system
	kubectl create ns istio-operator
	jsonnet istio/namespaces.jsonnet | kubectl apply -f -
	jsonnet istio/istio.jsonnet | kubectl apply -f -
	jsonnet istio/istio-install.jsonnet | kubectl apply -f -
	kubectl apply -f reviews.yaml
	kubectl apply -f productpage.yaml
	kubectl apply -f delegate.yaml