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



hiera_include('classes')
