.class public Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;
.super Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
.source "QuickSettingPowerSaverEX.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private demoObserver:Landroid/database/ContentObserver;

.field private expsEnable:Z

.field private expsObserver:Landroid/database/ContentObserver;

.field private handler:Landroid/os/Handler;

.field private imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

.field private indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

.field private observerRegister:Z

.field private perfMode:Z

.field private perfModeObserver:Landroid/database/ContentObserver;

.field private resetLockState:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrset"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const-string v0, "QuickSettingPowerSaverEX"

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->TAG:Ljava/lang/String;

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->handler:Landroid/os/Handler;

    .line 151
    iput-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    .line 154
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->observerRegister:Z

    .line 192
    iput-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    .line 195
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->expsEnable:Z

    .line 198
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->perfMode:Z

    .line 222
    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX$3;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->handler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX$3;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->expsObserver:Landroid/database/ContentObserver;

    .line 232
    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX$4;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->handler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX$4;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->perfModeObserver:Landroid/database/ContentObserver;

    .line 300
    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX$5;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->resetLockState:Ljava/lang/Runnable;

    .line 339
    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX$6;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->handler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX$6;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->demoObserver:Landroid/database/ContentObserver;

    .line 49
    const-string v0, "power_saver_ex"

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->tileLabel:Ljava/lang/String;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->toggleEXPSstate()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->resetLockState:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->Log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->updateExtremePSstate()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->updateDemoFLOstate()V

    return-void
.end method

.method public static getQSIconID()I
    .locals 1

    .prologue
    .line 295
    const v0, 0x7f020127

    return v0
.end method

.method public static getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1
    .parameter "resource"

    .prologue
    .line 289
    if-nez p0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0a00cf

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setContentView(Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;)Z
    .locals 7
    .parameter "_imageview"
    .parameter "_indicatorview"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 161
    .local v0, startTime:J
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v2, v3

    .line 189
    :goto_0
    return v2

    .line 164
    :cond_1
    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    .line 166
    iput-object p2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    .line 167
    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    invoke-virtual {v4, v3, v2}, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->setLevel(II)V

    .line 170
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->updateExtremePSstate()V

    .line 173
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->observerRegister:Z

    if-nez v4, :cond_2

    .line 175
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->observerRegister:Z

    .line 176
    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "htc_is_demo"

    invoke-static {v5}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->demoObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 180
    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "htc_extreme_power_saver_state"

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->expsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 184
    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "htc_performance_mode_state"

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->perfModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 188
    :cond_2
    const-string v3, "QuickSettingPowerSaverEX"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setContentView:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private toggleEXPSstate()V
    .locals 5

    .prologue
    .line 245
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->expsEnable:Z

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 247
    .local v1, nextEnable:Z
    :goto_0
    if-eqz v1, :cond_2

    .line 249
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/systemui/statusbar/phone/QuickSettings;

    if-eqz v2, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/QuickSettings;

    const-string v3, "com.htc.htcpowermanager.EXTREME_POWER_SAVER_CONFIRM"

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->startSettingsActivity(Ljava/lang/String;)V

    .line 262
    :cond_0
    :goto_1
    const-string v2, "QuickSettingPowerSaverEX"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "toggleEXPSstate.next:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    return-void

    .line 245
    .end local v1           #nextEnable:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 255
    .restart local v1       #nextEnable:Z
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.intent.action.HtcPowerSaver.ExtremeAutoModeOff"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 256
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 257
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    const/4 v4, -0x2

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 258
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/systemui/statusbar/phone/QuickSettings;

    if-eqz v2, :cond_0

    .line 259
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/QuickSettings;->animateCollapseAndUnlock()V

    goto :goto_1
.end method

.method private updateDemoFLOstate()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 312
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "htc_is_demo"

    invoke-static {v1, v4, v3}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 314
    .local v0, enableDemoFLO:Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "htc_performance_mode_state"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->perfMode:Z

    .line 318
    if-nez v0, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->perfMode:Z

    if-nez v1, :cond_1

    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->setEnabled(Z)V

    .line 319
    const-string v1, "QuickSettingPowerSaverEX"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDemoFLOstate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->perfMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    return-void

    :cond_0
    move v1, v3

    .line 314
    goto :goto_0

    :cond_1
    move v2, v3

    .line 318
    goto :goto_1
.end method

.method private updateExtremePSstate()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 203
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    if-nez v1, :cond_1

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "htc_extreme_power_saver_state"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->expsEnable:Z

    .line 209
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "htc_performance_mode_state"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_3

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->perfMode:Z

    .line 212
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->expsEnable:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->perfMode:Z

    if-nez v1, :cond_4

    move v0, v2

    .line 214
    .local v0, enable:Z
    :goto_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->setOverlayEnable(Z)V

    .line 215
    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    if-eqz v0, :cond_5

    move v1, v2

    :goto_4
    invoke-virtual {v4, v1, v2}, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->setLevel(II)V

    .line 217
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->perfMode:Z

    if-nez v1, :cond_6

    :goto_5
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->setEnabled(Z)V

    .line 219
    const-string v1, "QuickSettingPowerSaverEX"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateEXPSstate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->expsEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->perfMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #enable:Z
    :cond_2
    move v1, v3

    .line 206
    goto :goto_1

    :cond_3
    move v1, v3

    .line 209
    goto :goto_2

    :cond_4
    move v0, v3

    .line 212
    goto :goto_3

    .restart local v0       #enable:Z
    :cond_5
    move v1, v3

    .line 215
    goto :goto_4

    :cond_6
    move v2, v3

    .line 217
    goto :goto_5
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 6

    .prologue
    const v5, 0x7f07002e

    const/4 v4, 0x1

    .line 57
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->onAttachedToWindow()V

    .line 59
    const v2, 0x7f070027

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    const v3, 0x7f070028

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->setContentView(Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;)Z

    move-result v1

    .line 63
    .local v1, success:Z
    if-ne v1, v4, :cond_2

    .line 66
    new-instance v2, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX$1;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->setLongClickable(Z)V

    .line 82
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->getOnLongClickListener()Landroid/view/View$OnLongClickListener;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 84
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 87
    .local v0, moreview:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 88
    new-instance v2, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX$2;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->onLocaleChanged()V

    .line 119
    if-eqz v0, :cond_1

    .line 120
    const v2, 0x7f07002d

    invoke-virtual {p0, v2, v5}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->setTouchDelegate(II)V

    .line 123
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->updateDemoFLOstate()V

    .line 130
    .end local v0           #moreview:Landroid/view/View;
    :goto_0
    return-void

    .line 127
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->removeSelfIfNeed(Landroid/os/Handler;)V

    .line 128
    const-string v2, "QuickSettingPowerSaverEX"

    const-string v3, "!!!!!initialize set content fail"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 135
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->onDetachedFromWindow()V

    .line 137
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->observerRegister:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->demoObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 140
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->expsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->perfModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 142
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->observerRegister:Z

    .line 145
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->setLongClickable(Z)V

    .line 146
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 148
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->setOnOverlayChangeListener(I)V

    .line 149
    return-void
.end method

.method public onLocaleChanged()V
    .locals 4

    .prologue
    .line 270
    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 272
    .local v1, resource:Landroid/content/res/Resources;
    const v3, 0x7f070029

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 274
    .local v2, textview:Landroid/widget/TextView;
    if-eqz v2, :cond_0

    .line 276
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/util/res/HtcResUtil;->isInAllCapsLocale(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 280
    :cond_0
    const v3, 0x7f07002e

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 282
    .local v0, moreview:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 283
    const v3, 0x7f0a00de

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 285
    :cond_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 325
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setEnabled(Z)V

    .line 327
    const v1, 0x7f07002e

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 329
    .local v0, moreview:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 332
    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 336
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const/high16 v1, 0x3f80

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->setAlpha(F)V

    .line 337
    return-void

    .line 336
    :cond_1
    const v1, 0x3e99999a

    goto :goto_0
.end method
