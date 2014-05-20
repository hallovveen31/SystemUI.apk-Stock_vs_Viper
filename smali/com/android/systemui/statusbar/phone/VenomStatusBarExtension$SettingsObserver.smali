.class public Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "VenomStatusBarExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method private varargs uriEq(Landroid/net/Uri;[Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    array-length v3, p2

    move v2, v1

    :goto_0
    if-lt v2, v3, :cond_0

    :goto_1
    return v1

    :cond_0
    aget-object v0, p2, v2

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public observe()V
    .locals 7

    const/4 v3, 0x0

    const/16 v2, 0x53

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "screen_brightness_mode"

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v4, "tweaks_systemui_widget_current"

    aput-object v4, v1, v2

    const/4 v2, 0x2

    const-string v4, "tweaks_opaque_statusbar"

    aput-object v4, v1, v2

    const/4 v2, 0x3

    const-string v4, "tweaks_statusbar_bgcolor"

    aput-object v4, v1, v2

    const/4 v2, 0x4

    const-string v4, "tweaks_notif_bgalpha"

    aput-object v4, v1, v2

    const/4 v2, 0x5

    const-string v4, "tweaks_statusbar_transp_app"

    aput-object v4, v1, v2

    const/4 v2, 0x6

    const-string v4, "tweaks_statusbar_transp_home"

    aput-object v4, v1, v2

    const/4 v2, 0x7

    const-string v4, "tweaks_statusbar_customimage"

    aput-object v4, v1, v2

    const/16 v2, 0x8

    const-string v4, "tweaks_statusbar_customanim"

    aput-object v4, v1, v2

    const/16 v2, 0x9

    const-string v4, "tweaks_statusbar_customanim"

    aput-object v4, v1, v2

    const/16 v2, 0xa

    const-string v4, "tweaks_statusbar_hide_date"

    aput-object v4, v1, v2

    const/16 v2, 0xb

    const-string v4, "tweaks_statusbar_date_color"

    aput-object v4, v1, v2

    const/16 v2, 0xc

    const-string v4, "tweaks_notif_bgcolor"

    aput-object v4, v1, v2

    const/16 v2, 0xd

    const-string v4, "tweaks_status_icon"

    aput-object v4, v1, v2

    const/16 v2, 0xe

    const-string v4, "tweaks_carrier_icon"

    aput-object v4, v1, v2

    const/16 v2, 0xf

    const-string v4, "tweaks_hide_qs"

    aput-object v4, v1, v2

    const/16 v2, 0x10

    const-string v4, "tweaks_hide_settings"

    aput-object v4, v1, v2

    const/16 v2, 0x11

    const-string v4, "tweaks_systemui_settings"

    aput-object v4, v1, v2

    const/16 v2, 0x12

    const-string v4, "tweaks_qs_style"

    aput-object v4, v1, v2

    const/16 v2, 0x13

    const-string v4, "screen_brightness_mode"

    aput-object v4, v1, v2

    const/16 v2, 0x14

    const-string v4, "tweaks_cm_brightness_control"

    aput-object v4, v1, v2

    const/16 v2, 0x15

    const-string v4, "tweaks_block_pulldown"

    aput-object v4, v1, v2

    const/16 v2, 0x16

    const-string v4, "tweaks_block_pulldown_during_calls"

    aput-object v4, v1, v2

    const/16 v2, 0x17

    const-string v4, "tweaks_att_signalstrength"

    aput-object v4, v1, v2

    const/16 v2, 0x18

    const-string v4, "tweaks_hide_battery"

    aput-object v4, v1, v2

    const/16 v2, 0x19

    const-string v4, "tweaks_auto_quick_settings"

    aput-object v4, v1, v2

    const/16 v2, 0x1a

    const-string v4, "tweaks_clock_style"

    aput-object v4, v1, v2

    const/16 v2, 0x1b

    const-string v4, "tweaks_headerclock_style"

    aput-object v4, v1, v2

    const/16 v2, 0x1c

    const-string v4, "tweaks_hquicksettings"

    aput-object v4, v1, v2

    const/16 v2, 0x1d

    const-string v4, "tweaks_quicksettings"

    aput-object v4, v1, v2

    const/16 v2, 0x1e

    const-string v4, "tweaks_rosie_theme"

    aput-object v4, v1, v2

    const/16 v2, 0x1f

    const-string v4, "tweaks_pulldown_gestures"

    aput-object v4, v1, v2

    const/16 v2, 0x20

    const-string v4, "tweaks_quick_pulldown"

    aput-object v4, v1, v2

    const/16 v2, 0x21

    const-string v4, "tweaks_header_bgcolor"

    aput-object v4, v1, v2

    const/16 v2, 0x22

    const-string v4, "tweaks_opaque_header"

    aput-object v4, v1, v2

    const/16 v2, 0x23

    const-string v4, "tweaks_handle_bgcolor"

    aput-object v4, v1, v2

    const/16 v2, 0x24

    const-string v4, "tweaks_opaque_handle"

    aput-object v4, v1, v2

    const/16 v2, 0x25

    const-string v4, "tweaks_extended_bgcolor"

    aput-object v4, v1, v2

    const/16 v2, 0x26

    const-string v4, "tweaks_hide_edit"

    aput-object v4, v1, v2

    const/16 v2, 0x27

    const-string v4, "tweaks_eqs_singleflashtoggle"

    aput-object v4, v1, v2

    const/16 v2, 0x28

    const-string v4, "tweaks_heqs_bgcolor"

    aput-object v4, v1, v2

    const/16 v2, 0x29

    const-string v4, "tweaks_heqs_indicator_off_color"

    aput-object v4, v1, v2

    const/16 v2, 0x2a

    const-string v4, "tweaks_heqs_indicator_on_color"

    aput-object v4, v1, v2

    const/16 v2, 0x2b

    const-string v4, "tweaks_heqs_size"

    aput-object v4, v1, v2

    const/16 v2, 0x2c

    const-string v4, "tweaks_heqs_hide_text"

    aput-object v4, v1, v2

    const/16 v2, 0x2d

    const-string v4, "tweaks_heqs_hide_indicators"

    aput-object v4, v1, v2

    const/16 v2, 0x2e

    const-string v4, "tweaks_heqs_titlecolor"

    aput-object v4, v1, v2

    const/16 v2, 0x2f

    const-string v4, "tweaks_systemui_theme_heqs"

    aput-object v4, v1, v2

    const/16 v2, 0x30

    const-string v4, "tweaks_use_heqs_overlay"

    aput-object v4, v1, v2

    const/16 v2, 0x31

    const-string v4, "tweaks_heqs_offcolor"

    aput-object v4, v1, v2

    const/16 v2, 0x32

    const-string v4, "tweaks_heqs_oncolor"

    aput-object v4, v1, v2

    const/16 v2, 0x33

    const-string v4, "tweaks_eqs_indicator_on_color"

    aput-object v4, v1, v2

    const/16 v2, 0x34

    const-string v4, "tweaks_eqs_indicator_off_color"

    aput-object v4, v1, v2

    const/16 v2, 0x35

    const-string v4, "tweaks_neqs_oncolor"

    aput-object v4, v1, v2

    const/16 v2, 0x36

    const-string v4, "tweaks_neqs_offcolor"

    aput-object v4, v1, v2

    const/16 v2, 0x37

    const-string v4, "tweaks_neqs_bgcolor"

    aput-object v4, v1, v2

    const/16 v2, 0x38

    const-string v4, "tweaks_neqs_hidelabels"

    aput-object v4, v1, v2

    const/16 v2, 0x39

    const-string v4, "tweaks_neqs_tile_bgcolor"

    aput-object v4, v1, v2

    const/16 v2, 0x3a

    const-string v4, "tweaks_eqs_columns"

    aput-object v4, v1, v2

    const/16 v2, 0x3b

    const-string v4, "tweaks_neqs_textcolor"

    aput-object v4, v1, v2

    const/16 v2, 0x3c

    const-string v4, "tweaks_neqs_footer_color"

    aput-object v4, v1, v2

    const/16 v2, 0x3d

    const-string v4, "tweaks_carrier_textcolor"

    aput-object v4, v1, v2

    const/16 v2, 0x3e

    const-string v4, "tweaks_veqs_titlecolor"

    aput-object v4, v1, v2

    const/16 v2, 0x3f

    const-string v4, "tweaks_veqs_descriptioncolor"

    aput-object v4, v1, v2

    const/16 v2, 0x40

    const-string v4, "tweaks_veqs_dividercolor"

    aput-object v4, v1, v2

    const/16 v2, 0x41

    const-string v4, "tweaks_systemui_theme_eqs"

    aput-object v4, v1, v2

    const/16 v2, 0x42

    const-string v4, "tweaks_use_veqs_overlay"

    aput-object v4, v1, v2

    const/16 v2, 0x43

    const-string v4, "tweaks_veqs_offcolor"

    aput-object v4, v1, v2

    const/16 v2, 0x44

    const-string v4, "tweaks_veqs_oncolor"

    aput-object v4, v1, v2

    const/16 v2, 0x45

    const-string v4, "tweaks_veqs_bgcolor"

    aput-object v4, v1, v2

    const/16 v2, 0x46

    const-string v4, "tweaks_notif_contact_widget"

    aput-object v4, v1, v2

    const/16 v2, 0x47

    const-string v4, "tweaks_contact_widget_count"

    aput-object v4, v1, v2

    const/16 v2, 0x48

    const-string v4, "tweaks_contact_widget_size"

    aput-object v4, v1, v2

    const/16 v2, 0x49

    const-string v4, "tweaks_contact_widget_longClick"

    aput-object v4, v1, v2

    const/16 v2, 0x4a

    const-string v4, "tweaks_contact_widget_vibrator"

    aput-object v4, v1, v2

    const/16 v2, 0x4b

    const-string v4, "tweaks_contact_widget_vibrator_duration"

    aput-object v4, v1, v2

    const/16 v2, 0x4c

    const-string v4, "tweaks_contact_widget_add_icon"

    aput-object v4, v1, v2

    const/16 v2, 0x4d

    const-string v4, "tweaks_contact_widget_round_corners"

    aput-object v4, v1, v2

    const/16 v2, 0x4e

    const-string v4, "tweaks_signal_left"

    aput-object v4, v1, v2

    const/16 v2, 0x4f

    const-string v4, "tweaks_battery_left"

    aput-object v4, v1, v2

    const/16 v2, 0x50

    const-string v4, "tweaks_systemui_dim"

    aput-object v4, v1, v2

    const/16 v2, 0x51

    const-string v4, "tweaks_headerbuttons_color"

    aput-object v4, v1, v2

    const/16 v2, 0x52

    const-string v4, "tweaks_heqs_location"

    aput-object v4, v1, v2

    array-length v4, v1

    move v2, v3

    :goto_0
    if-lt v2, v4, :cond_0

    invoke-static {}, Lcom/android/systemui/statusbar/theming/ThemeSettings;->getObservableUris()[Landroid/net/Uri;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_1
    if-lt v2, v5, :cond_1

    return-void

    :cond_0
    aget-object v0, v1, v2

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$0(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    aget-object v0, v4, v2

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$0(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v0, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "tweaks_opaque_statusbar"

    aput-object v4, v3, v2

    const-string v4, "tweaks_statusbar_bgcolor"

    aput-object v4, v3, v1

    const-string v4, "tweaks_statusbar_transp_app"

    aput-object v4, v3, v6

    const-string v4, "tweaks_statusbar_transp_home"

    aput-object v4, v3, v7

    invoke-direct {p0, p2, v3}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->uriEq(Landroid/net/Uri;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "tweaks_notif_bgcolor"

    aput-object v4, v3, v2

    const-string v4, "tweaks_statusbar_customimage"

    aput-object v4, v3, v1

    const-string v4, "tweaks_statusbar_customanim"

    aput-object v4, v3, v6

    const-string v4, "tweaks_notif_bgalpha"

    aput-object v4, v3, v7

    invoke-direct {p0, p2, v3}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->uriEq(Landroid/net/Uri;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #calls: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->makeStatusBgBarColor()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$7(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-array v3, v1, [Ljava/lang/String;

    const-string v4, "tweaks_carrier_icon"

    aput-object v4, v3, v2

    invoke-direct {p0, p2, v3}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->uriEq(Landroid/net/Uri;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #calls: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->showCarrierLogo()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$8(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)V

    goto :goto_0

    :cond_2
    new-array v3, v1, [Ljava/lang/String;

    const-string v4, "tweaks_status_icon"

    aput-object v4, v3, v2

    invoke-direct {p0, p2, v3}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->uriEq(Landroid/net/Uri;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #calls: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->showStatusLogo()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$9(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)V

    goto :goto_0

    :cond_3
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "tweaks_hide_qs"

    aput-object v4, v3, v2

    const-string v4, "tweaks_hide_settings"

    aput-object v4, v3, v1

    const-string v4, "tweaks_systemui_settings"

    aput-object v4, v3, v6

    invoke-direct {p0, p2, v3}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->uriEq(Landroid/net/Uri;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$0(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "tweaks_hide_qs"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    #setter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mCurrentQSOpenMethod:I
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$10(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #calls: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->updateQSTabsVisibility()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$11(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #calls: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->updateHeaderButtons()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$12(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)V

    goto :goto_0

    :cond_4
    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "tweaks_statusbar_date_color"

    aput-object v4, v3, v2

    const-string v4, "tweaks_statusbar_hide_date"

    aput-object v4, v3, v1

    invoke-direct {p0, p2, v3}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->uriEq(Landroid/net/Uri;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->updateDateTweaks()V

    goto :goto_0

    :cond_5
    const/16 v3, 0x9

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "tweaks_qs_style"

    aput-object v4, v3, v2

    const-string v4, "tweaks_veqs_titlecolor"

    aput-object v4, v3, v1

    const-string v4, "tweaks_veqs_descriptioncolor"

    aput-object v4, v3, v6

    const-string v4, "tweaks_veqs_dividercolor"

    aput-object v4, v3, v7

    const-string v4, "tweaks_systemui_theme_eqs"

    aput-object v4, v3, v8

    const/4 v4, 0x5

    const-string v5, "tweaks_use_veqs_overlay"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "tweaks_veqs_offcolor"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "tweaks_veqs_oncolor"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "tweaks_veqs_bgcolor"

    aput-object v5, v3, v4

    invoke-direct {p0, p2, v3}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->uriEq(Landroid/net/Uri;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #calls: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->updateQSStyle()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$13(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #calls: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->isVerticalQSEnabled()Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$14(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #calls: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->updateQSTabsVisibility()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$11(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #calls: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->updateHeaderButtons()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$12(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)V

    goto/16 :goto_0

    :cond_6
    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "tweaks_notif_contact_widget"

    aput-object v4, v3, v2

    const-string v4, "tweaks_contact_widget_count"

    aput-object v4, v3, v1

    const-string v4, "tweaks_contact_widget_size"

    aput-object v4, v3, v6

    const-string v4, "tweaks_contact_widget_longClick"

    aput-object v4, v3, v7

    const-string v4, "tweaks_contact_widget_vibrator"

    aput-object v4, v3, v8

    const/4 v4, 0x5

    const-string v5, "tweaks_contact_widget_vibrator_duration"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "tweaks_contact_widget_add_icon"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "tweaks_contact_widget_round_corners"

    aput-object v5, v3, v4

    invoke-direct {p0, p2, v3}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->uriEq(Landroid/net/Uri;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->updateContactWidget()V

    goto/16 :goto_0

    :cond_7
    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "screen_brightness_mode"

    aput-object v4, v3, v2

    const-string v4, "tweaks_cm_brightness_control"

    aput-object v4, v3, v1

    invoke-direct {p0, p2, v3}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->uriEq(Landroid/net/Uri;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mVenomBrightnessControl:Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$15(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;->updateSettings()V

    goto/16 :goto_0

    :cond_8
    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "tweaks_hide_edit"

    aput-object v4, v3, v2

    const-string v4, "tweaks_headerbuttons_color"

    aput-object v4, v3, v1

    invoke-direct {p0, p2, v3}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->uriEq(Landroid/net/Uri;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$0(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tweaks_headerbuttons_color"

    const/4 v6, -0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    #setter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mHeaderButtonsColor:I
    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$16(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$0(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tweaks_hide_edit"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_9

    :goto_1
    iput-boolean v1, v3, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mTweaksHideEdit:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #calls: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->updateHeaderButtons()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$12(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)V

    goto/16 :goto_0

    :cond_9
    move v1, v2

    goto :goto_1

    :cond_a
    new-array v3, v1, [Ljava/lang/String;

    const-string v4, "tweaks_block_pulldown"

    aput-object v4, v3, v2

    invoke-direct {p0, p2, v3}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->uriEq(Landroid/net/Uri;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$0(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tweaks_block_pulldown"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_b

    :goto_2
    #setter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->isAllowOnLS:Z
    invoke-static {v3, v1}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$17(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;Z)V

    goto/16 :goto_0

    :cond_b
    move v1, v2

    goto :goto_2

    :cond_c
    new-array v3, v1, [Ljava/lang/String;

    const-string v4, "tweaks_block_pulldown_during_calls"

    aput-object v4, v3, v2

    invoke-direct {p0, p2, v3}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->uriEq(Landroid/net/Uri;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$0(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tweaks_block_pulldown_during_calls"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_d

    :goto_3
    #setter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->isAllowedDuringCalls:Z
    invoke-static {v3, v1}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$18(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;Z)V

    goto/16 :goto_0

    :cond_d
    move v1, v2

    goto :goto_3

    :cond_e
    new-array v3, v1, [Ljava/lang/String;

    const-string v4, "tweaks_att_signalstrength"

    aput-object v4, v3, v2

    invoke-direct {p0, p2, v3}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->uriEq(Landroid/net/Uri;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$0(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tweaks_att_signalstrength"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_f

    :goto_4
    #setter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mUseATTSignalStrength:Z
    invoke-static {v3, v1}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$19(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;Z)V

    goto/16 :goto_0

    :cond_f
    move v1, v2

    goto :goto_4

    :cond_10
    new-array v3, v1, [Ljava/lang/String;

    const-string v4, "tweaks_hide_battery"

    aput-object v4, v3, v2

    invoke-direct {p0, p2, v3}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->uriEq(Landroid/net/Uri;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #calls: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->updateBatteryVisibility()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$20(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)V

    goto/16 :goto_0

    :cond_11
    new-array v3, v1, [Ljava/lang/String;

    const-string v4, "tweaks_quick_pulldown"

    aput-object v4, v3, v2

    invoke-direct {p0, p2, v3}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->uriEq(Landroid/net/Uri;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$0(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "tweaks_quick_pulldown"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_12

    move v3, v1

    :goto_5
    #setter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mQuickPullDownRight:Z
    invoke-static {v4, v3}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$21(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;Z)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$0(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tweaks_quick_pulldown"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_13

    :goto_6
    #setter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mQuickPullDownLeft:Z
    invoke-static {v3, v1}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$22(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;Z)V

    goto/16 :goto_0

    :cond_12
    move v3, v2

    goto :goto_5

    :cond_13
    move v1, v2

    goto :goto_6

    :cond_14
    new-array v3, v1, [Ljava/lang/String;

    const-string v4, "tweaks_systemui_dim"

    aput-object v4, v3, v2

    invoke-direct {p0, p2, v3}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->uriEq(Landroid/net/Uri;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$1(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$0(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tweaks_systemui_dim"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_15

    :goto_7
    iput-boolean v1, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mFadeEnabled:Z

    goto/16 :goto_0

    :cond_15
    move v1, v2

    goto :goto_7

    :cond_16
    new-array v3, v1, [Ljava/lang/String;

    const-string v4, "tweaks_auto_quick_settings"

    aput-object v4, v3, v2

    invoke-direct {p0, p2, v3}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->uriEq(Landroid/net/Uri;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$0(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tweaks_auto_quick_settings"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_17

    :goto_8
    #setter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->isQuickQuickQS:Z
    invoke-static {v3, v1}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$23(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;Z)V

    goto/16 :goto_0

    :cond_17
    move v1, v2

    goto :goto_8

    :cond_18
    new-array v3, v1, [Ljava/lang/String;

    const-string v4, "tweaks_clock_style"

    aput-object v4, v3, v2

    invoke-direct {p0, p2, v3}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->uriEq(Landroid/net/Uri;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #calls: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->updateClockStyle()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$24(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)V

    goto/16 :goto_0

    :cond_19
    new-array v3, v1, [Ljava/lang/String;

    const-string v4, "tweaks_carrier_textcolor"

    aput-object v4, v3, v2

    invoke-direct {p0, p2, v3}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->uriEq(Landroid/net/Uri;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #calls: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->SetCarrierLabelTextColor()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$25(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)V

    goto/16 :goto_0

    :cond_1a
    new-array v3, v1, [Ljava/lang/String;

    const-string v4, "tweaks_headerclock_style"

    aput-object v4, v3, v2

    invoke-direct {p0, p2, v3}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->uriEq(Landroid/net/Uri;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #calls: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->updateHeaderClockStyle()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$26(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)V

    goto/16 :goto_0

    :cond_1b
    new-array v3, v1, [Ljava/lang/String;

    const-string v4, "tweaks_heqs_location"

    aput-object v4, v3, v2

    invoke-direct {p0, p2, v3}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->uriEq(Landroid/net/Uri;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #calls: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->updateHeqsLocation()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$27(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)V

    goto/16 :goto_0

    :cond_1c
    new-array v3, v1, [Ljava/lang/String;

    const-string v4, "tweaks_pulldown_gestures"

    aput-object v4, v3, v2

    invoke-direct {p0, p2, v3}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->uriEq(Landroid/net/Uri;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mVenomGesturesControl:Lcom/android/systemui/statusbar/phone/VenomGesturesControl;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$5(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Lcom/android/systemui/statusbar/phone/VenomGesturesControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/VenomGesturesControl;->setGestures()V

    goto/16 :goto_0

    :cond_1d
    new-array v3, v1, [Ljava/lang/String;

    const-string v4, "tweaks_extended_bgcolor"

    aput-object v4, v3, v2

    invoke-direct {p0, p2, v3}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->uriEq(Landroid/net/Uri;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #calls: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->setInfoLineBackgroundColor()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$28(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)V

    goto/16 :goto_0

    :cond_1e
    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "tweaks_header_bgcolor"

    aput-object v4, v3, v2

    const-string v4, "tweaks_opaque_header"

    aput-object v4, v3, v1

    invoke-direct {p0, p2, v3}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->uriEq(Landroid/net/Uri;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #calls: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->setHeaderBackgroundColor()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$29(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)V

    goto/16 :goto_0

    :cond_1f
    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "tweaks_handle_bgcolor"

    aput-object v4, v3, v2

    const-string v4, "tweaks_opaque_handle"

    aput-object v4, v3, v1

    invoke-direct {p0, p2, v3}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->uriEq(Landroid/net/Uri;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #calls: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->setHandleBackgroundColor()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$30(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)V

    goto/16 :goto_0

    :cond_20
    new-array v3, v1, [Ljava/lang/String;

    const-string v4, "tweaks_signal_left"

    aput-object v4, v3, v2

    invoke-direct {p0, p2, v3}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->uriEq(Landroid/net/Uri;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->updateSignalIcons()V

    goto/16 :goto_0

    :cond_21
    new-array v3, v1, [Ljava/lang/String;

    const-string v4, "tweaks_battery_left"

    aput-object v4, v3, v2

    invoke-direct {p0, p2, v3}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->uriEq(Landroid/net/Uri;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->updateBatteryIcon()V

    goto/16 :goto_0

    :cond_22
    new-array v3, v1, [Ljava/lang/String;

    const-string v4, "tweaks_heqs_bgcolor"

    aput-object v4, v3, v2

    invoke-direct {p0, p2, v3}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->uriEq(Landroid/net/Uri;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #calls: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->setHEQSBackgroundColor()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$31(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)V

    goto/16 :goto_0

    :cond_23
    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "tweaks_heqs_indicator_off_color"

    aput-object v4, v3, v2

    const-string v4, "tweaks_heqs_indicator_on_color"

    aput-object v4, v3, v1

    const-string v4, "tweaks_systemui_theme_heqs"

    aput-object v4, v3, v6

    const-string v4, "tweaks_use_heqs_overlay"

    aput-object v4, v3, v7

    const-string v4, "tweaks_heqs_offcolor"

    aput-object v4, v3, v8

    const/4 v4, 0x5

    const-string v5, "tweaks_heqs_oncolor"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "tweaks_eqs_singleflashtoggle"

    aput-object v5, v3, v4

    invoke-direct {p0, p2, v3}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->uriEq(Landroid/net/Uri;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPowerWidget:Lcom/android/systemui/statusbar/powerwidget/PowerWidget;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$32(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Lcom/android/systemui/statusbar/powerwidget/PowerWidget;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->setupWidget()V

    goto/16 :goto_0

    :cond_24
    const/16 v3, 0xa

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "tweaks_eqs_indicator_off_color"

    aput-object v4, v3, v2

    const-string v4, "tweaks_eqs_indicator_on_color"

    aput-object v4, v3, v1

    const-string v4, "tweaks_neqs_bgcolor"

    aput-object v4, v3, v6

    const-string v4, "tweaks_neqs_tile_bgcolor"

    aput-object v4, v3, v7

    const-string v4, "tweaks_eqs_columns"

    aput-object v4, v3, v8

    const/4 v4, 0x5

    const-string v5, "tweaks_neqs_hidelabels"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "tweaks_neqs_footer_color"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "tweaks_neqs_textcolor"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "tweaks_neqs_oncolor"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, "tweaks_neqs_offcolor"

    aput-object v5, v3, v4

    invoke-direct {p0, p2, v3}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->uriEq(Landroid/net/Uri;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$1(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQS:Lcom/android/systemui/statusbar/phone/QuickSettings;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$1(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQS:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/QuickSettings;->unload()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #calls: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->updateQSStyle()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$13(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)V

    goto/16 :goto_0

    :cond_25
    new-array v3, v1, [Ljava/lang/String;

    const-string v4, "tweaks_horizontal_qs"

    aput-object v4, v3, v2

    invoke-direct {p0, p2, v3}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->uriEq(Landroid/net/Uri;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    const-string v1, "Venom"

    const-string v2, "refreshWidgets"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #calls: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->refreshWidgets()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$33(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)V

    goto/16 :goto_0

    :cond_26
    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "tweaks_heqs_size"

    aput-object v4, v3, v2

    const-string v4, "tweaks_heqs_hide_text"

    aput-object v4, v3, v1

    const-string v4, "tweaks_heqs_hide_indicators"

    aput-object v4, v3, v6

    const-string v4, "tweaks_heqs_titlecolor"

    aput-object v4, v3, v7

    invoke-direct {p0, p2, v3}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->uriEq(Landroid/net/Uri;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPowerWidget:Lcom/android/systemui/statusbar/powerwidget/PowerWidget;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$32(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Lcom/android/systemui/statusbar/powerwidget/PowerWidget;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->setupWidget()V

    goto/16 :goto_0

    :cond_27
    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "tweaks_quicksettings"

    aput-object v4, v3, v2

    const-string v4, "tweaks_hquicksettings"

    aput-object v4, v3, v1

    const-string v4, "tweaks_heqs_hide_text"

    aput-object v4, v3, v6

    const-string v4, "tweaks_heqs_hide_indicators"

    aput-object v4, v3, v7

    invoke-direct {p0, p2, v3}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->uriEq(Landroid/net/Uri;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_29

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPowerWidget:Lcom/android/systemui/statusbar/powerwidget/PowerWidget;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$32(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Lcom/android/systemui/statusbar/powerwidget/PowerWidget;

    move-result-object v1

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPowerWidget:Lcom/android/systemui/statusbar/powerwidget/PowerWidget;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$32(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Lcom/android/systemui/statusbar/powerwidget/PowerWidget;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->setupWidget()V

    :cond_28
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    iget v1, v1, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mCurrentQSStyle:I

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$1(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQS:Lcom/android/systemui/statusbar/phone/QuickSettings;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$1(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQS:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/QuickSettings;->reload()V

    goto/16 :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mHtcQuickSettings:Lcom/android/systemui/statusbar/preference/HtcQuickSettings;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$34(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Lcom/android/systemui/statusbar/preference/HtcQuickSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->onStop()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mHtcQuickSettings:Lcom/android/systemui/statusbar/preference/HtcQuickSettings;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$34(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Lcom/android/systemui/statusbar/preference/HtcQuickSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->loadSettings()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mHtcQuickSettings:Lcom/android/systemui/statusbar/preference/HtcQuickSettings;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$34(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Lcom/android/systemui/statusbar/preference/HtcQuickSettings;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$1(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->setService(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    goto/16 :goto_0

    :cond_29
    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "tweaks_rosie_theme"

    aput-object v3, v1, v2

    invoke-direct {p0, p2, v1}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->uriEq(Landroid/net/Uri;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mQuickLauncher:Lcom/android/systemui/statusbar/phone/QuickLauncher;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$35(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Lcom/android/systemui/statusbar/phone/QuickLauncher;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mQuickLauncher:Lcom/android/systemui/statusbar/phone/QuickLauncher;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$35(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Lcom/android/systemui/statusbar/phone/QuickLauncher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/QuickLauncher;->setupApps()V

    goto/16 :goto_0

    :cond_2a
    invoke-static {p2}, Lcom/android/systemui/statusbar/theming/ThemeSettings;->hasObservableUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-static {}, Lcom/android/systemui/statusbar/theming/ThemeSettings;->getSettings()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_9
    if-lt v1, v4, :cond_2b

    invoke-static {}, Lcom/android/systemui/statusbar/theming/ThemeSettings;->getIntSettings()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_a
    if-ge v1, v4, :cond_0

    aget-object v0, v3, v1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$0(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-static {v0, v5}, Lcom/android/systemui/statusbar/theming/ThemeSettings;->putIntUpdate(Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_2b
    aget-object v0, v3, v1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$0(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/systemui/statusbar/theming/ThemeSettings;->putStringUpdate(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_2c
    const-string v1, "m0narX_StatusBarExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No action for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
