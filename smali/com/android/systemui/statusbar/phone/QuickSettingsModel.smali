.class public Lcom/android/systemui/statusbar/phone/QuickSettingsModel;
.super Ljava/lang/Object;
.source "QuickSettingsModel.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;
.implements Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
.implements Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/QuickSettingsModel$LocaleChangeCallback;,
        Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;,
        Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;
    }
.end annotation


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private localeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/QuickSettingsModel$LocaleChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mRotationLockState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

.field private oldConfig:Landroid/content/res/Configuration;

.field private rotationCallbacks:[Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

.field private rotationTiles:[Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x5

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->DEBUG:Z

    .line 59
    const-string v0, "QuickSettingsModel"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->TAG:Ljava/lang/String;

    .line 86
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRotationLockState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    .line 133
    new-array v0, v1, [Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->rotationTiles:[Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 134
    new-array v0, v1, [Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->rotationCallbacks:[Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->oldConfig:Landroid/content/res/Configuration;

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->localeCallbacks:Ljava/util/ArrayList;

    .line 90
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    .line 91
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mHandler:Landroid/os/Handler;

    .line 92
    return-void
.end method

.method private notifyLocaleChange()V
    .locals 5

    .prologue
    .line 211
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->DEBUG:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 212
    const-string v2, "QuickSettingsModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyLocaleChange:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->oldConfig:Landroid/content/res/Configuration;

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->localeCallbacks:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->localeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 221
    :cond_1
    return-void

    .line 217
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->localeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 219
    .local v0, callbackSize:I
    const/4 v1, 0x0

    .local v1, loop:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 220
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->localeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$LocaleChangeCallback;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$LocaleChangeCallback;->onLocaleChanged()V

    .line 219
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addRotationLockTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;I)V
    .locals 1
    .parameter "view"
    .parameter "cb"
    .parameter "callbackIndex"

    .prologue
    .line 149
    const/4 v0, 0x5

    if-ge p3, v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->rotationTiles:[Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    aput-object p1, v0, p3

    .line 152
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->rotationCallbacks:[Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    aput-object p2, v0, p3

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->onRotationLockChanged()V

    .line 155
    return-void
.end method

.method public onAirplaneModeChanged(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 111
    return-void
.end method

.method public onBatteryLevelChanged(IZ)V
    .locals 0
    .parameter "level"
    .parameter "pluggedIn"

    .prologue
    .line 144
    return-void
.end method

.method public onBluetoothStateChange(Z)V
    .locals 0
    .parameter "on"

    .prologue
    .line 139
    return-void
.end method

.method public onBrightnessLevelChanged()V
    .locals 0

    .prologue
    .line 192
    return-void
.end method

.method public onMobileDataSignalChanged(ZILjava/lang/String;IZZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "enabled"
    .parameter "mobileSignalIconId"
    .parameter "signalContentDescription"
    .parameter "dataTypeIconId"
    .parameter "activityIn"
    .parameter "activityOut"
    .parameter "dataContentDescription"
    .parameter "enabledDesc"

    .prologue
    .line 129
    return-void
.end method

.method onRotationLockChanged()V
    .locals 5

    .prologue
    .line 159
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    .line 161
    .local v0, locked:Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRotationLockState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    iput-boolean v0, v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    .line 162
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRotationLockState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    const v3, 0x7f020107

    iput v3, v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->iconId:I

    .line 165
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->rotationTiles:[Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->rotationCallbacks:[Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    if-eqz v2, :cond_1

    .line 168
    const/4 v1, 0x0

    .local v1, loop:I
    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    .line 169
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->rotationCallbacks:[Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->rotationTiles:[Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 170
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->rotationCallbacks:[Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->rotationTiles:[Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRotationLockState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-interface {v2, v3, v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 168
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 173
    .end local v1           #loop:I
    :cond_1
    const-string v2, "QuickSettingRotation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRotationLockChanged:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return-void
.end method

.method public onWifiSignalChanged(ZIZZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "enabled"
    .parameter "wifiSignalIconId"
    .parameter "activityIn"
    .parameter "activityOut"
    .parameter "wifiSignalContentDescription"
    .parameter "enabledDesc"

    .prologue
    .line 121
    return-void
.end method

.method refreshRotationLockTile()V
    .locals 2

    .prologue
    .line 178
    const/4 v0, 0x0

    .local v0, loop:I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->rotationCallbacks:[Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 183
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->onRotationLockChanged()V

    .line 187
    :cond_0
    return-void

    .line 178
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method updateResources()V
    .locals 3

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->refreshRotationLockTile()V

    .line 98
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 101
    .local v0, newConfig:Landroid/content/res/Configuration;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->oldConfig:Landroid/content/res/Configuration;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->oldConfig:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 103
    :cond_0
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->oldConfig:Landroid/content/res/Configuration;

    .line 104
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->notifyLocaleChange()V

    .line 106
    :cond_1
    return-void
.end method
