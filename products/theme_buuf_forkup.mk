$(call inherit-product, vendor/cyanogen/products/cyanogen_sholes.mk)

# Manually set the policy and PRODUCT_PACKAGES so we can tweak them 
# depending on whether or not we build with Google. There is no way
# to override PRODUCT_PACKAGES from an inheriting product yet.

# Change 'defaulttheme' to the theme name
# This will be the same name as the cyanogen_theme_defaulttheme.mk file
# located in the same directory

PRODUCT_NAME := theme_buuf_forkup

# Here you need to rename defaulttheme to match the folder name as well
PRODUCT_PACKAGE_OVERLAYS := vendor/theme_buuf_forkup/overlay_buuf

PRODUCT_COPY_FILES += \
    # vendor/theme_buuf_forkup/proprietary_buuf/HelixLauncher2.apk:system/app/HelixLauncher2.apk

#PRODUCT_PROPERTY_OVERRIDES += \
     ro.modversion=CyanogenMod-5.0.8-Buufv1

ifdef BUUF_WITH_GOOGLE
    TARGET_OTA_BACKUPTOOL=False

    PRODUCT_COPY_FILES += \
        vendor/theme_buuf_forkup/proprietary_buuf/AlarmClock.apk:system/app/AlarmClock.apk \
        vendor/theme_buuf_forkup/proprietary_buuf/android.tether.usb-1.apk:system/app/android.tether.usb-1.apk \
        vendor/theme_buuf_forkup/proprietary_buuf/android.tether-1.apk:system/app/android.tether-1.apk \
        vendor/theme_buuf_forkup/proprietary_buuf/at.abraxas.mountusb.apk:system/app/at.abraxas.mountusb.apk \
        vendor/theme_buuf_forkup/proprietary_buuf/Brightness.apk:system/app/Brightness.apk \
        vendor/theme_buuf_forkup/proprietary_buuf/CarHomeGoogle.apk:system/app/CarHomeGoogle.apk \
        vendor/theme_buuf_forkup/proprietary_buuf/CarHomeLauncher.apk:system/app/CarHomeLauncher.apk \
        vendor/theme_buuf_forkup/proprietary_buuf/Facebook.apk:system/app/Facebook.apk \
        vendor/theme_buuf_forkup/proprietary_buuf/GenieWidget.apk:system/app/GenieWidget.apk \
        vendor/theme_buuf_forkup/proprietary_buuf/Gmail.apk:system/app/Gmail.apk \
        vendor/theme_buuf_forkup/proprietary_buuf/GoogleBackupTransport.apk:system/app/GoogleBackupTransport.apk \
        vendor/theme_buuf_forkup/proprietary_buuf/GoogleCalendarSyncAdapter.apk:system/app/GoogleCalendarSyncAdapter.apk \
        vendor/theme_buuf_forkup/proprietary_buuf/GoogleContactsSyncAdapter.apk:system/app/GoogleContactsSyncAdapter.apk \
        vendor/theme_buuf_forkup/proprietary_buuf/GoogleFeedback.apk:system/app/GoogleFeedback.apk \
        vendor/theme_buuf_forkup/proprietary_buuf/GooglePartnerSetup.apk:system/app/GooglePartnerSetup.apk \
        vendor/theme_buuf_forkup/proprietary_buuf/GoogleQuickSearchBox.apk:system/app/GoogleQuickSearchBox.apk \
        vendor/theme_buuf_forkup/proprietary_buuf/GoogleServicesFramework.apk:system/app/GoogleServicesFramework.apk \
        vendor/theme_buuf_forkup/proprietary_buuf/googlevoice.apk:system/app/googlevoice.apk \
        vendor/theme_buuf_forkup/proprietary_buuf/HtcCopyright.apk:system/app/HtcCopyright.apk \
        vendor/theme_buuf_forkup/proprietary_buuf/HtcEmailPolicy.apk:system/app/HtcEmailPolicy.apk \
        vendor/theme_buuf_forkup/proprietary_buuf/HtcSettings.apk:system/app/HtcSettings.apk \
        vendor/theme_buuf_forkup/proprietary_buuf/kickback.apk:system/app/kickback.apk \
        vendor/theme_buuf_forkup/proprietary_buuf/LatinImeGoogle.apk:system/app/LatinImeGoogle.apk \
        vendor/theme_buuf_forkup/proprietary_buuf/LatinImeTutorial.apk:system/app/LatinImeTutorial.apk \
        vendor/theme_buuf_forkup/proprietary_buuf/Maps.apk:system/app/Maps.apk \
        vendor/theme_buuf_forkup/proprietary_buuf/MarketUpdater.apk:system/app/MarketUpdater.apk \
        vendor/theme_buuf_forkup/proprietary_buuf/MediaUploader.apk:system/app/MediaUploader.apk \
        vendor/theme_buuf_forkup/proprietary_buuf/NetworkLocation.apk:system/app/NetworkLocation.apk \
        vendor/theme_buuf_forkup/proprietary_buuf/OneTimeInitializer.apk:system/app/OneTimeInitializer.apk \
        vendor/theme_buuf_forkup/proprietary_buuf/PassionQuickOffice.apk:system/app/PassionQuickOffice.apk \
        vendor/theme_buuf_forkup/proprietary_buuf/SetupWizard.apk:system/app/SetupWizard.apk \
        vendor/theme_buuf_forkup/proprietary_buuf/soundback.apk:system/app/soundback.apk \
        vendor/theme_buuf_forkup/proprietary_buuf/Street.apk:system/app/Street.apk \
        vendor/theme_buuf_forkup/proprietary_buuf/Talk.apk:system/app/Talk.apk \
        vendor/theme_buuf_forkup/proprietary_buuf/talkback.apk:system/app/talkback.apk \
        vendor/theme_buuf_forkup/proprietary_buuf/Twitter.apk:system/app/Twitter.apk \
        vendor/theme_buuf_forkup/proprietary_buuf/Vending.apk:system/app/Vending.apk \
        vendor/theme_buuf_forkup/proprietary_buuf/VoiceSearch.apk:system/app/VoiceSearch.apk \
        vendor/theme_buuf_forkup/proprietary_buuf/VideoPlayerMoto.apk:system/app/VideoPlayerMoto.apk \
        vendor/theme_buuf_forkup/proprietary_buuf/YouTube.apk:system/app/YouTube.apk \
        vendor/theme_buuf_forkup/proprietary_buuf/com.amazon.mp3.apk:sysgtem/app/com.amazon.mp3.apk \
        vendor/theme_buuf_forkup/proprietary_buuf/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml \
        vendor/theme_buuf_forkup/proprietary_buuf/com.google.android.maps.jar:system/framework/com.google.android.maps.jar \
        vendor/theme_buuf_forkup/proprietary_buuf/features.xml:/system/etc/permissions/features.xml \
        vendor/theme_buuf_forkup/proprietary_buuf/libinterstitial.so:/system/lib/libinterstitial.so \
        vendor/theme_buuf_forkup/proprietary_buuf/libspeech.so:/system/lib/libspeech.so

endif

