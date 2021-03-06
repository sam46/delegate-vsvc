{
  apiVersion: 'v1',
  kind: 'List',
  items: [
    {
      "apiVersion": "v1",
      "kind": "Namespace",
      metadata: {
        name: "istio-system",
      },
    },
    {
      "apiVersion": "install.istio.io/v1alpha1",
      "kind": "IstioOperator",
      "metadata": {
        "namespace": "istio-system",
        "name": "example-istiocontrolplane"
      },
      "spec": {
        "profile": "demo"
      }
    }
  ]
}