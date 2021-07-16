local install = import 'istio-install.jsonnet';
local istio = import 'istio.jsonnet';

local isNamespace(o) = std.objectHas(o, "kind") && o["kind"] == "Namespace";

{
  apiVersion: 'v1',
  kind: 'List',
  items: std.filter(isNamespace, install.items + istio.items),
}