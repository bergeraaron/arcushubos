FILESEXTRAPATHS_prepend := "${THISDIR}/linux-4.x:"

# Clear out the kernel extra features to make sure netfilter support doesn't
#  get added back in!
KERNEL_EXTRA_FEATURES = ""
KERNEL_FEATURES_append = ""

# Upgrade to 4.19.115 kernel until Yocto release catches up...
SRCREV_machine_beaglebone-yocto ?= "8e53093ba27fb7a714f62ad52c30031c3e0ae13d"
LINUX_VERSION_beaglebone-yocto = "4.19.115"
KERNEL_VERSION_SANITY_SKIP="1"
LINUX_VERSION = "4.19.115"
PV = "${LINUX_VERSION}+git${SRCPV}"

# Create a uImage output file to match what we have done in past
KERNEL_IMAGETYPE = "uImage"

SRC_URI += " \
	file://defconfig \
	file://adc.cfg \
	file://fs.cfg \
	file://leds.cfg \
	file://pwm.cfg \
	file://usb.cfg \
	file://0001-Iris-dtsi-config-changes.patch \
	file://0004-Go-back-to-old-mmc-numbering-scheme.patch \
	file://0002-Disable-Ethernet-MDIX.patch \
	"

# This issue appears to have been fixed in another manner
#	file://0003-usbnet-fix-debugging-output-for-work-items.patch

