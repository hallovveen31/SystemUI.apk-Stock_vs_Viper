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
    .parameter "context"
    .parameter "attrset"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const-string v0, "QuickSettingGPS"

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->TAG:Ljava/lang/String;

    .line 37
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->mCurrentState:Z

    .line 39
    iput-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->textview:Landroid/widget/TextView;

    .line 40
    iput-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    .line 41
    iput-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->indicator:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->handler:Landroid/os/Handler;

    .line 43
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->isCollapseNeeded:Z

    .line 165
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->observerRegister:Z

    .line 168
    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS$3;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->handler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS$3;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->gpsObserver:Landroid/database/ContentObserver;

    .line 48
    const-string v0, "gps"

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->tileLabel:Ljava/lang/String;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->toggleGPS()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->Log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->getActualState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->updateGpsStats(Z)V

    return-void
.end method

.method private getActualState()Z
    .locals 3

    .prologue
    .line 245
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 246
    .local v0, resolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 249
    :goto_0
    return v1

    .line 247
    :cond_0
    const-string v2, "gps"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    .line 249
    .local v1, state:Z
    goto :goto_0
.end method

.method public static getQSIconID()I
    .locals 1

    .prologue
    .line 280
    const v0, 0x20800b0

    return v0
.end method

.method public static getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1
    .parameter "resource"

    .prologue
    .line 274
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
    .parameter "desiredState"

    .prologue
    .line 217
    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 219
    .local v3, resolver:Landroid/content/ContentResolver;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.htc.settings.action.SET_GPS_ENABLED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 220
    .local v2, requestChangeIntent:Landroid/content/Intent;
    const-string v4, "extra_enabled"

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 221
    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 223
    sget v4, Lcom/android/systemui/statusbar/StatusBarFlag;->SKU_ID:I

    const/16 v5, 0xd

    if-ne v4, v5, :cond_0

    .line 225
    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "network"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    .line 226
    .local v1, isNlpEnabled:Z
    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "gps"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 227
    .local v0, isGpsenabled:Z
    if-nez v1, :cond_2

    if-nez v0, :cond_2

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->isCollapseNeeded:Z

    .line 230
    .end local v0           #isGpsenabled:Z
    .end local v1           #isNlpEnabled:Z
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

    .line 232
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->isCollapseNeeded:Z

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/android/systemui/statusbar/phone/QuickSettings;

    if-eqz v4, :cond_1

    .line 233
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/QuickSettings;->animateCollapseAndUnlock()V

    .line 234
    :cond_1
    return-void

    .line 227
    .restart local v0       #isGpsenabled:Z
    .restart local v1       #isNlpEnabled:Z
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private setContentView(Landroid/widget/TextView;Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;)Z
    .locals 7
    .parameter "_textview"
    .parameter "_imageview"
    .parameter "_indicatorview"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 149
    .local v0, startTime:J
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    move v3, v2

    .line 161
    :goto_0
    return v3

    .line 152
    :cond_1
    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->textview:Landroid/widget/TextView;

    .line 153
    iput-object p2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    .line 154
    iput-object p3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->indicator:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    .line 155
    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "double_confirm_gps_enabling"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_2

    move v2, v3

    :cond_2
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->isCollapseNeeded:Z

    .line 157
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

    .line 159
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->startObserve()V

    .line 160
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

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 180
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    if-nez v1, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    const-string v1, "QuickSettingGPS"

    const-string v2, "gpsObserver.startObserve"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 187
    .local v0, resolver:Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 191
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->observerRegister:Z

    if-ne v1, v4, :cond_2

    .line 193
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->gpsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 194
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->observerRegister:Z

    .line 197
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->observerRegister:Z

    if-nez v1, :cond_3

    .line 199
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->observerRegister:Z

    .line 200
    const-string v1, "location_providers_allowed"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->gpsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 202
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->getActualState()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->updateGpsStats(Z)V

    goto :goto_0
.end method

.method private toggleGPS()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 206
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

    .line 208
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gps_lock_status"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 209
    const-string v0, "QuickSettingGPS"

    const-string v1, "GPS Locked, the GPS state remain unchanged!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :goto_0
    return-void

    .line 213
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
    .parameter "newState"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 237
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

    .line 239
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->mCurrentState:Z

    .line 240
    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->mCurrentState:Z

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->setOverlayEnable(Z)V

    .line 241
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->indicator:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->mCurrentState:Z

    if-ne v3, v1, :cond_1

    move v2, v1

    :cond_1
    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->setLevel(II)V

    .line 242
    return-void

    :cond_2
    move v0, v2

    .line 240
    goto :goto_0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 7

    .prologue
    const v6, 0x7f07002e

    const/4 v5, 0x1

    .line 54
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->onAttachedToWindow()V

    .line 56
    const v2, 0x7f070029

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f070027

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    const v4, 0x7f070028

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->setContentView(Landroid/widget/TextView;Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;)Z

    move-result v1

    .line 61
    .local v1, success:Z
    if-ne v1, v5, :cond_2

    .line 64
    new-instance v2, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS$1;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->setLongClickable(Z)V

    .line 74
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->getOnLongClickListener()Landroid/view/View$OnLongClickListener;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 76
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 78
    .local v0, moreview:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 81
    new-instance v2, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS$2;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->onLocaleChanged()V

    .line 110
    if-eqz v0, :cond_1

    .line 113
    const v2, 0x7f07002d

    invoke-virtual {p0, v2, v6}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->setTouchDelegate(II)V

    .line 123
    .end local v0           #moreview:Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 119
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->removeSelfIfNeed(Landroid/os/Handler;)V

    .line 121
    const-string v2, "QuickSettingGPS"

    const-string v3, "!!!!!initialize set content fail"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 128
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->onDetachedFromWindow()V

    .line 130
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 132
    .local v0, resolver:Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->observerRegister:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 134
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->gpsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 135
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->observerRegister:Z

    .line 138
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->setOnOverlayChangeListener(I)V

    .line 141
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->setLongClickable(Z)V

    .line 142
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 143
    return-void
.end method

.method public onLocaleChanged()V
    .locals 4

    .prologue
    .line 257
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 259
    .local v1, resource:Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->textview:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 261
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->textview:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->textview:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/util/res/HtcResUtil;->isInAllCapsLocale(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 265
    :cond_0
    const v2, 0x7f07002e

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 267
    .local v0, moreview:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 268
    const v2, 0x7f0a00de

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 270
    :cond_1
    return-void
.end method
