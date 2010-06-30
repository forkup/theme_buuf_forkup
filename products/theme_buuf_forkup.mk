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
        vendor/theme_buuf_forkup/proprietary_buuf/CarDock.apk:system/app/CarDock.apk \
        vendor/theme_buuf_forkup/proprietary_buuf/Facebook.apk:system/app/Facebook.apk \
        vendor/theme_buuf_forkup/proprietary_buuf/GenieWidget.apk:system/app/GenieWidget.apk \
        vendor/theme_buuf_forkup/proprietary_buuf/googlevoice.apk:system/app/googlevoice.apk \
        vendor/theme_buuf_forkup/proprietary_buuf/HtcCopyright.apk:system/app/HtcCopyright.apk \
        vendor/theme_buuf_forkup/proprietary_buuf/libinterstitial.so:system/lib/libinterstitial.so \
        vendor/theme_buuf_forkup/proprietary_buuf/BugReport.apk:system/app/BugReport.apk \
        vendor/theme_buuf_forkup/proprietary_buuf/EnhancedGoogleSearchProvider.apk:system/app/EnhancedGoogleSearchProvider.apk \
        vendor/theme_buuf_forkup/proprietary_buuf/Gmail.apk:system/app/Gmail.apk \
        vendor/theme_buuf_forkup/proprietary_buuf/GmailProvider.apk:system/app/GmailProvider.apk \
        vendor/theme_buuf_forkup/proprietary_buuf/GoogleApps.apk:system/app/GoogleApps.apk \
        vendor/theme_buuf_forkup/proprietary_buuf/GoogleBackupTransport.apk:system/app/GoogleBackupTransport.apk \
        vendor/theme_buuf_forkup/proprietary_buuf/GoogleCheckin.apk:system/app/GoogleCheckin.apk \
        vendor/theme_buuf_forkup/proprietary_buuf/GoogleContactsSyncAdapter.apk:system/app/GoogleContactsSyncAdapter.apk \
        vendor/theme_buuf_forkup/proprietary_buuf/GooglePartnerSetup.apk:system/app/GooglePartnerSetup.apk \
        vendor/theme_buuf_forkup/proprietary_buuf/GoogleSettingsProvider.apk:system/app/GoogleSettingsProvider.apk \
        vendor/theme_buuf_forkup/proprietary_buuf/GoogleSubscribedFeedsProvider.apk:system/app/GoogleSubscribedFeedsProvider.apk \
        vendor/theme_buuf_forkup/proprietary_buuf/gtalkservice.apk:system/app/gtalkservice.apk \
	vendor/theme_buuf_forkup/proprietary_buuf/HTC_IME.apk:system/app/HTC_IME.apk \
        vendor/theme_buuf_forkup/proprietary_buuf/LatinImeTutorial.apk:system/app/LatinImeTutorial.apk \
	vendor/theme_buuf_forkup/proprietary_buuf/Launcher.apk:system/app/Launcher.apk \
        vendor/theme_buuf_forkup/proprietary_buuf/Maps.apk:system/app/Maps.apk \
        vendor/theme_buuf_forkup/proprietary_buuf/MarketUpdater.apk:system/app/MarketUpdater.apk \
        vendor/theme_buuf_forkup/proprietary_buuf/MediaUploader.apk:system/app/MediaUploader.apk \
        vendor/theme_buuf_forkup/proprietary_buuf/NetworkLocation.apk:system/app/NetworkLocation.apk \
        vendor/theme_buuf_forkup/proprietary_buuf/SetupWizard.apk:system/app/SetupWizard.apk \
        vendor/theme_buuf_forkup/proprietary_buuf/Street.apk:system/app/Street.apk \
	vendor/theme_buuf_forkup/proprietary_buuf/swype.apk:system/app/swype.apk \
        vendor/theme_buuf_forkup/proprietary_buuf/Talk.apk:system/app/Talk.apk \
        vendor/theme_buuf_forkup/proprietary_buuf/TalkProvider.apk:system/app/TalkProvider.apk \
        vendor/theme_buuf_forkup/proprietary_buuf/Vending.apk:system/app/Vending.apk \
        vendor/theme_buuf_forkup/proprietary_buuf/VoiceSearchWithKeyboard.apk:system/app/VoiceSearchWithKeyboard.apk \
        vendor/theme_buuf_forkup/proprietary_buuf/YouTube.apk:system/app/YouTube.apk \
	vendor/theme_buuf_forkup/proprietary_buuf/com.amazon.mp3.apk:sysgtem/app/com.amazon.mp3.apk \
        vendor/theme_buuf_forkup/proprietary_buuf/com.google.android.datamessaging.xml:system/etc/permissions/com.google.android.datamessaging.xml \
        vendor/theme_buuf_forkup/proprietary_buuf/com.google.android.gtalkservice.xml:system/etc/permissions/com.google.android.gtalkservice.xml \
        vendor/theme_buuf_forkup/proprietary_buuf/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml \
        vendor/theme_buuf_forkup/proprietary_buuf/com.google.android.gtalkservice.jar:system/framework/com.google.android.gtalkservice.jar \
        vendor/theme_buuf_forkup/proprietary_buuf/com.google.android.maps.jar:system/framework/com.google.android.maps.jar \
        vendor/theme_buuf_forkup/proprietary_buuf/libgtalk_jni.so:system/lib/libgtalk_jni.so \
        vendor/theme_buuf_forkup/proprietary_buuf/libt9.so:system/lib/libt9.so

endif
