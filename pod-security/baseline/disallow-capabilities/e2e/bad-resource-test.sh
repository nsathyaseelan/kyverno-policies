if  kubectl apply -f bad-resource.yaml 2>&1 | grep -q  "created" 
then 
  echo "Test failed, Resource creation is not blocked when the policy is in Enforce mode."
  exit 1
else 
  echo "Test succeed, Resource creation is blocked when the policy is in Enforce mode."
  exit 0
fi