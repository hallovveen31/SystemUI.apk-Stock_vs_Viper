.class public Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;
.super Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
.source "QuickSettingPowerSaver.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private demoObserver:Landroid/database/ContentObserver;

.field private handler:Landroid/os/Handler;

.field private imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

.field private indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

.field private observerRegister:Z

.field private perfMode:Z

.field private perfModeObserver:Landroid/database/ContentObserver;

.field private powerSaveEnable:Z

.field private powersaveObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "QuickSettingPowerSaver"

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;->handler:Landroid/os/Handler;

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;->observerRegister:Z

    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver$3;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;->handler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver$3;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;->powersaveObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver$4;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;->handler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver$4;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;->perfModeObserver:Landroid/database/ContentObserver;

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;->powerSaveEnable:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;->perfMode:Z

    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver$6;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;->handler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver$6;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;->demoObserver:Landroid/database/ContentObserver;

    const-string v0, "power_saver"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->tileLabel:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;->togglePowerSaveState()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->Log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;->updatePowerSaverState()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;->performTogglePowerSaveState()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;->updateDemoFLOstate()V

    return-void
.end method

.method public static getQSIconID()I
    .locals 1

    const v0, 0x7f02013a

    return v0
.end method

.method public static getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0a00c8

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private performTogglePowerSaveState()V
    .locals 6

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;->powerSaveEnable:Z

    if-nez v5, :cond_0

    move v0, v3

    :goto_0
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "user_powersaver_enable"

    if-ne v0, v3, :cond_1

    :goto_1
    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.htc.htcpowermanager.powersaver.ON_NOTIF_TOGGLE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "toggle_state"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v3, "QuickSettingPowerSaver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "togglePowerState oldState:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;->powerSaveEnable:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " newState:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move v0, v4

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1
.end method

.method private setContentView(Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;)Z
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;->startObserve()V

    const-string v2, "QuickSettingPowerSaver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setContentView:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private startObserve()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "QuickSettingPowerSaver"

    const-string v2, "powerObserver.startObserve"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;->observerRegister:Z

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;->powersaveObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;->perfModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;->demoObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;->observerRegister:Z

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;->observerRegister:Z

    if-nez v1, :cond_3

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;->observerRegister:Z

    const-string v1, "user_powersaver_enable"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;->powersaveObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "htc_is_demo"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;->demoObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "htc_performance_mode_state"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;->perfModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;->powersaveObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    invoke-virtual {v1, v4, v2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    goto :goto_0
.end method

.method private togglePowerSaveState()V
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;->powerSaveEnable:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    sget v3, Lcom/android/systemui/statusbar/StatusBarFlag;->SKU_ID:I

    const/16 v4, 0x1f

    if-eq v3, v4, :cond_0

    sget v3, Lcom/android/systemui/statusbar/StatusBarFlag;->SKU_ID:I

    const/16 v4, 0x4f

    if-ne v3, v4, :cond_5

    :cond_0
    if-ne v0, v1, :cond_5

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "powersaver_connectivity"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    move v3, v1

    :goto_1
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "powersaver_manual_info_dlg"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_4

    move v4, v1

    :goto_2
    const-string v5, "QuickSettingPowerSaver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KDDIToggle.next:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " dataConnection:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " showDialog:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v3, v1, :cond_5

    if-ne v4, v1, :cond_5

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/systemui/statusbar/quicksetting/QuickPSWarningActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v0, 0x10c0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettings;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettings;->startSettingsActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_3
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v3, v2

    goto :goto_1

    :cond_4
    move v4, v2

    goto :goto_2

    :cond_5
    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver$5;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_3
.end method

.method private updateDemoFLOstate()V
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "htc_is_demo"

    invoke-static {v1, v4, v3}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "htc_performance_mode_state"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;->perfMode:Z

    if-nez v0, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;->perfMode:Z

    if-nez v1, :cond_1

    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;->setEnabled(Z)V

    const-string v1, "QuickSettingPowerSaver"

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

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;->perfMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method private updatePowerSaverState()V
    .locals 6

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "user_powersaver_enable"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;->powerSaveEnable:Z

    const-string v2, "htc_performance_mode_state"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;->perfMode:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;->powerSaveEnable:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;->perfMode:Z

    if-nez v2, :cond_4

    move v0, v3

    :goto_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    if-ne v0, v3, :cond_5

    move v2, v3

    :goto_4
    invoke-virtual {v5, v2}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->setOverlayEnable(Z)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    if-ne v0, v3, :cond_6

    move v2, v3

    :goto_5
    invoke-virtual {v5, v2, v3}, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->setLevel(II)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;->perfMode:Z

    if-nez v2, :cond_7

    :goto_6
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;->setEnabled(Z)V

    const-string v2, "QuickSettingPowerSaver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Observer:onChange "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;->powerSaveEnable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;->perfMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    move v2, v4

    goto :goto_2

    :cond_4
    move v0, v4

    goto :goto_3

    :cond_5
    move v2, v4

    goto :goto_4

    :cond_6
    move v2, v4

    goto :goto_5

    :cond_7
    move v3, v4

    goto :goto_6
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 6

    const v5, 0x7f07002e

    const/4 v4, 0x1

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->onAttachedToWindow()V

    const v2, 0x7f070027

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    const v3, 0x7f070028

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;->setContentView(Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;)Z

    move-result v1

    if-ne v1, v4, :cond_2

    new-instance v2, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver$1;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v4}, Landroid/view/View;->setLongClickable(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->getOnLongClickListener()Landroid/view/View$OnLongClickListener;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver$2;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;->onLocaleChanged()V

    if-eqz v0, :cond_1

    const v2, 0x7f07002d

    invoke-virtual {p0, v2, v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setTouchDelegate(II)V

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;->updateDemoFLOstate()V

    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->removeSelfIfNeed(Landroid/os/Handler;)V

    const-string v2, "QuickSettingPowerSaver"

    const-string v3, "!!!!!initialize set content fail"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->onDetachedFromWindow()V

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;->observerRegister:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;->powersaveObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;->perfModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;->demoObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;->observerRegister:Z

    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setOnOverlayChangeListener(I)V

    invoke-virtual {p0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v3}, Landroid/view/View;->setLongClickable(Z)V

    invoke-virtual {p0, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public onLocaleChanged()V
    .locals 4

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070029

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/util/res/HtcResUtil;->isInAllCapsLocale(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAllCaps(Z)V

    :cond_0
    const v3, 0x7f07002e

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const v3, 0x7f0a00de

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setEnabled(Z)V

    const v1, 0x7f07002e

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const/high16 v1, 0x3f80

    :goto_0
    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void

    :cond_1
    const v1, 0x3e99999a

    goto :goto_0
.end method
