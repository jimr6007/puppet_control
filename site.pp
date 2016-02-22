# Make this error go away:
# Puppet (warning): The package type's allow_virtual parameter will be changing
# its default value from false to true in a future release. If you do not want
# to allow virtual packages, please explicitly set allow_virtual to false.
if versioncmp($::puppetversion,'3.6.1') >= 0 {
$allow_virtual_packages = hiera('allow_virtual_packages',false)
Package {
allow_virtual => $allow_virtual_packages,
}
}


# enable hiera node classification
# must add the "classes" item to each hiera yaml file for which you want to specify classes


hiera_include('classes')
