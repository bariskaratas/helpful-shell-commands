# show all values in OctopusParameters
foreach ($key in $OctopusParameters.Keys){
  $value = $OctopusParameters[$key]
  echo "$key $value"
}

# show the package name 
$OctopusParameters["Octopus.Action[Deploy Paris to server].Package[].PackageVersion"]
