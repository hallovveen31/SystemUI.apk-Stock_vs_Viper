.class public Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;
.super Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
.source "QuickSettingGPS.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private gpsObserver:Landroid/database/ContentObserver;

.field private handler:Landroid/os/Handler;

.field private imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

.field private indicator:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

.field private isCollapseNeeded:Z

.field private mCurrentState:Z

.field private observerRegister:Z

.field private textview:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "QuickSettingGPS"

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->TAG:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->mCurrentState:Z

    iput-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->textview:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->indicator:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->handler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->isCollapseNeeded:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->observerRegister:Z

    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS$3;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->handler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS$3;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->gpsObserver:Landroid/database/ContentObserver;

    const-string v0, "gps"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->tileLabel:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->toggleGPS()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->Log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->getActualState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->updateGpsStats(Z)V

    return-void
.end method

.method private getActualState()Z
    .locals 3

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const-string v2, "gps"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public static getQSIconID()I
    .locals 1

    const v0, 0x20800b0

    return v0
.end method

.method public static getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0a00ba

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private requestStateChange(Z)V
    .locals 7

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.htc.settings.action.SET_GPS_ENABLED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "extra_enabled"

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget v4, Lcom/android/systemui/statusbar/StatusBarFlag;->SKU_ID:I

    const/16 v5, 0xd

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "network"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "gps"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->isCollapseNeeded:Z

    :cond_0
    const-string v4, "QuickSettingGPS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "requestStateChange:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", collapse : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->isCollapseNeeded:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->isCollapseNeeded:Z

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/android/systemui/statusbar/phone/QuickSettings;

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/QuickSettings;->animateCollapseAndUnlock()V

    :cond_1
    return-void

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private setContentView(Landroid/widget/TextView;Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    move v3, v2

    :goto_0
    return v3

    :cond_1
    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->textview:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    iput-object p3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->indicator:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "double_confirm_gps_enabling"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_2

    move v2, v3

    :cond_2
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->isCollapseNeeded:Z

    const-string v2, "QuickSettingGPS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setContentView: need to collapse : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->isCollapseNeeded:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->startObserve()V

    const-string v2, "QuickSettingGPS"

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

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startObserve()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "QuickSettingGPS"

    const-string v2, "gpsObserver.startObserve"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->observerRegister:Z

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->gpsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->observerRegister:Z

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->observerRegister:Z

    if-nez v1, :cond_3

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->observerRegister:Z

    const-string v1, "location_providers_allowed"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->gpsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->getActualState()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->updateGpsStats(Z)V

    goto :goto_0
.end method

.method private toggleGPS()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "QuickSettingGPS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "toggleGPS - mCurrentState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->mCurrentState:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gps_lock_status"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_0

    const-string v0, "QuickSettingGPS"

    const-string v1, "GPS Locked, the GPS state remain unchanged!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->mCurrentState:Z

    if-nez v2, :cond_1

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->requestStateChange(Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private updateGpsStats(Z)V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-boolean v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "QuickSettingGPS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateGpsStats - newState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->mCurrentState:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->mCurrentState:Z

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->setOverlayEnable(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->indicator:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->mCurrentState:Z

    if-ne v3, v1, :cond_1

    move v2, v1

    :cond_1
    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->setLevel(II)V

    return-void

    :cond_2
    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 7

    const v6, 0x7f07002e

    const/4 v5, 0x1

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->onAttachedToWindow()V

    const v2, 0x7f070029

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f070027

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    const v4, 0x7f070028

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->setContentView(Landroid/widget/TextView;Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;)Z

    move-result v1

    if-ne v1, v5, :cond_2

    new-instance v2, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS$1;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v5}, Landroid/view/View;->setLongClickable(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->getOnLongClickListener()Landroid/view/View$OnLongClickListener;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS$2;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->onLocaleChanged()V

    if-eqz v0, :cond_1

    const v2, 0x7f07002d

    invoke-virtual {p0, v2, v6}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setTouchDelegate(II)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->removeSelfIfNeed(Landroid/os/Handler;)V

    const-string v2, "QuickSettingGPS"

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

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->observerRegister:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->gpsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->observerRegister:Z

    :cond_0
    invoke-virtual {p0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setOnOverlayChangeListener(I)V

    invoke-virtual {p0, v3}, Landroid/view/View;->setLongClickable(Z)V

    invoke-virtual {p0, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public onLocaleChanged()V
    .locals 4

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->textview:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->textview:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->textview:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/util/res/HtcResUtil;->isInAllCapsLocale(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAllCaps(Z)V

    :cond_0
    const v2, 0x7f07002e

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const v2, 0x7f0a00de

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
