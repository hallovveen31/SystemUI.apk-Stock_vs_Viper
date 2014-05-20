.class public Lcom/android/systemui/statusbar/policy/LocationBasedServiceController;
.super Ljava/lang/Object;
.source "LocationBasedServiceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/LocationBasedServiceController$GPSContentObserver;
    }
.end annotation


# instance fields
.field private isGpsEnabled:Z

.field private isVerizonLbsEnabled:Z

.field private mContext:Landroid/content/Context;

.field private mGpsOneContentObserver:Lcom/android/systemui/statusbar/policy/LocationBasedServiceController$GPSContentObserver;

.field private mGpsSetting:I

.field private mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mService:Landroid/app/StatusBarManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/StatusBarManager;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/LocationBasedServiceController;->mHandler:Landroid/os/Handler;

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/LocationBasedServiceController;->isGpsEnabled:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/LocationBasedServiceController;->isVerizonLbsEnabled:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/LocationBasedServiceController;->mGpsSetting:I

    new-instance v1, Lcom/android/systemui/statusbar/policy/LocationBasedServiceController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/LocationBasedServiceController$1;-><init>(Lcom/android/systemui/statusbar/policy/LocationBasedServiceController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/LocationBasedServiceController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/LocationBasedServiceController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/LocationBasedServiceController;->mService:Landroid/app/StatusBarManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/LocationBasedServiceController;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/LocationBasedServiceController;->mService:Landroid/app/StatusBarManager;

    if-eqz v1, :cond_0

    const-string v1, "LbsController"

    const-string v2, "LbsController created"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/systemui/statusbar/policy/LocationBasedServiceController$GPSContentObserver;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/LocationBasedServiceController$GPSContentObserver;-><init>(Lcom/android/systemui/statusbar/policy/LocationBasedServiceController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/LocationBasedServiceController;->mGpsOneContentObserver:Lcom/android/systemui/statusbar/policy/LocationBasedServiceController$GPSContentObserver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/LocationBasedServiceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_providers_allowed"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/LocationBasedServiceController;->mGpsOneContentObserver:Lcom/android/systemui/statusbar/policy/LocationBasedServiceController$GPSContentObserver;

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.htc.intent.action.QUICKBOOT_POWEROFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/LocationBasedServiceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/LocationBasedServiceController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/LocationBasedServiceController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/LocationBasedServiceController;->getState(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/LocationBasedServiceController;->mGpsSetting:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/LocationBasedServiceController;->mService:Landroid/app/StatusBarManager;

    const-string v2, "gpsone"

    invoke-virtual {v1, v2, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/LocationBasedServiceController;->updateValue()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/LocationBasedServiceController;->updateIcon()V

    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/android/systemui/statusbar/policy/LocationBasedServiceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/LocationBasedServiceController;->updateValue()V

    return-void
.end method

.method static synthetic access$1(Lcom/android/systemui/statusbar/policy/LocationBasedServiceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/LocationBasedServiceController;->updateIcon()V

    return-void
.end method

.method static synthetic access$2(Lcom/android/systemui/statusbar/policy/LocationBasedServiceController;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/LocationBasedServiceController;->mGpsSetting:I

    return v0
.end method

.method static synthetic access$3(Lcom/android/systemui/statusbar/policy/LocationBasedServiceController;Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/LocationBasedServiceController;->saveState(Landroid/content/Context;I)V

    return-void
.end method

.method private getState(Landroid/content/Context;)I
    .locals 4

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pre_state_of_gpsone"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "LbsController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get gpsone state="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private saveState(Landroid/content/Context;I)V
    .locals 3

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pre_state_of_gpsone"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v0, "LbsController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "save gpsone state="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setIconType(I)V
    .locals 5

    const v0, 0x7f02050c

    packed-switch p1, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/LocationBasedServiceController;->mService:Landroid/app/StatusBarManager;

    const-string v2, "gpsone"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    return-void

    :pswitch_0
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isVerizon()Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f02050b

    goto :goto_0

    :cond_0
    const v0, 0x7f02050a

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isVerizon()Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f020509

    goto :goto_0

    :cond_1
    const v0, 0x7f020508

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateIcon()V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isVerizon()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/LocationBasedServiceController;->isGpsEnabled:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/LocationBasedServiceController;->isVerizonLbsEnabled:Z

    if-nez v3, :cond_0

    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/LocationBasedServiceController;->setIconType(I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/LocationBasedServiceController;->isGpsEnabled:Z

    if-eqz v3, :cond_2

    move v0, v2

    :goto_2
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method private updateValue()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationBasedServiceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/LocationBasedServiceController;->isGpsEnabled:Z

    const-string v0, "LbsController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isGpsEnabled="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/LocationBasedServiceController;->isGpsEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationBasedServiceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vzw_lbs"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/LocationBasedServiceController;->isVerizonLbsEnabled:Z

    const-string v0, "LbsController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isVerizonLbsEnabled="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/LocationBasedServiceController;->isVerizonLbsEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
