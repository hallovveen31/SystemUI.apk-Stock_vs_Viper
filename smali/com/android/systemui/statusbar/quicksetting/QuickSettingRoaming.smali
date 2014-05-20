.class public Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;
.super Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
.source "QuickSettingRoaming.java"


# instance fields
.field private final SPRINT_DATA_DOMESTICL_DATA:Ljava/lang/String;

.field private final SPRINT_DATA_DOMESTIC_VOICE:Ljava/lang/String;

.field private final SPRINT_DATA_INTERNATIONAL_DATA:Ljava/lang/String;

.field private final SPRINT_DATA_INTERNATIONAL_VOICE:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final USER_PREFERRED_NETWORK:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

.field private indicator:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

.field private mCurPreferredNetwork:I

.field private mCurrentState:I

.field private observerRegister:Z

.field private roamingObserver:Landroid/database/ContentObserver;

.field private telephonyManager:Lcom/htc/telephony/HtcTelephonyManager;

.field private textview:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrset"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const-string v0, "QuickSettingRoaming"

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->TAG:Ljava/lang/String;

    .line 42
    iput-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->textview:Landroid/widget/TextView;

    .line 43
    iput-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    .line 44
    iput-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->indicator:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->handler:Landroid/os/Handler;

    .line 47
    iput v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->mCurrentState:I

    .line 48
    iput v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->mCurPreferredNetwork:I

    .line 50
    const-string v0, "sprint_international_data_roaming"

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->SPRINT_DATA_INTERNATIONAL_DATA:Ljava/lang/String;

    .line 51
    const-string v0, "sprint_international_voice_roaming"

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->SPRINT_DATA_INTERNATIONAL_VOICE:Ljava/lang/String;

    .line 52
    const-string v0, "sprint_domestic_data_roaming"

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->SPRINT_DATA_DOMESTICL_DATA:Ljava/lang/String;

    .line 53
    const-string v0, "sprint_domestic_voice_roaming"

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->SPRINT_DATA_DOMESTIC_VOICE:Ljava/lang/String;

    .line 55
    const-string v0, "user_preferred_network"

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->USER_PREFERRED_NETWORK:Ljava/lang/String;

    .line 177
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->observerRegister:Z

    .line 180
    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming$2;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->handler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming$2;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->roamingObserver:Landroid/database/ContentObserver;

    .line 292
    iput-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->telephonyManager:Lcom/htc/telephony/HtcTelephonyManager;

    .line 60
    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->mContext:Landroid/content/Context;

    .line 61
    const-string v0, "roaming"

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->tileLabel:Ljava/lang/String;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->Log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->mCurrentState:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->mCurPreferredNetwork:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->getRoamingState()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->updateRoamingStats(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;)Lcom/htc/telephony/HtcTelephonyManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->telephonyManager:Lcom/htc/telephony/HtcTelephonyManager;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;Lcom/htc/telephony/HtcTelephonyManager;)Lcom/htc/telephony/HtcTelephonyManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->telephonyManager:Lcom/htc/telephony/HtcTelephonyManager;

    return-object p1
.end method

.method public static getQSIconID()I
    .locals 1

    .prologue
    .line 373
    const v0, 0x7f020143

    return v0
.end method

.method public static getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1
    .parameter "resource"

    .prologue
    .line 367
    if-nez p0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0a00c9

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getRoamingState()I
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 240
    const/4 v4, 0x0

    .line 241
    .local v4, state:I
    iget-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 242
    .local v0, contentResolver:Landroid/content/ContentResolver;
    if-eqz v0, :cond_1

    .line 246
    :try_start_0
    sget v7, Lcom/android/systemui/statusbar/StatusBarFlag;->SKU_ID:I

    const/16 v8, 0xd

    if-ne v7, v8, :cond_2

    .line 247
    const-string v5, "vzw_global_roaming_options"

    const/4 v6, 0x0

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 248
    if-eqz v4, :cond_0

    .line 249
    const/4 v4, 0x1

    .line 282
    :cond_0
    :goto_0
    const-string v5, "QuickSettingRoaming"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getRoamingState - state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_1
    :goto_1
    return v4

    .line 251
    :cond_2
    sget v7, Lcom/android/systemui/statusbar/StatusBarFlag;->SKU_ID:I

    const/16 v8, 0xa

    if-ne v7, v8, :cond_7

    .line 252
    const/4 v1, 0x0

    .line 253
    .local v1, domesticRoaming:Z
    const/4 v3, 0x0

    .line 254
    .local v3, internationalRoaming:Z
    const-string v7, "domestic"

    invoke-static {v0, v7}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->isVoiceRoamingAllowed(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 256
    const-string v7, "domestic"

    invoke-static {v0, v7}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->isDataRoamingAllowed(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    .line 259
    :cond_3
    const-string v7, "international"

    invoke-static {v0, v7}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->isVoiceRoamingAllowed(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 261
    const-string v7, "international"

    invoke-static {v0, v7}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->isDataRoamingAllowed(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v3

    .line 264
    :cond_4
    if-nez v1, :cond_5

    if-eqz v3, :cond_6

    :cond_5
    move v4, v6

    .line 265
    :goto_2
    goto :goto_0

    :cond_6
    move v4, v5

    .line 264
    goto :goto_2

    .line 266
    .end local v1           #domesticRoaming:Z
    .end local v3           #internationalRoaming:Z
    :cond_7
    sget-boolean v5, Lcom/android/systemui/statusbar/StatusBarFlag;->ROAMING_PREFERRED_SLOT:Z

    if-eqz v5, :cond_a

    .line 267
    const-string v5, "user_preferred_network"

    invoke-static {v0, v5}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->mCurPreferredNetwork:I

    .line 268
    const-string v5, "QuickSettingRoaming"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Current Preferred Network = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->mCurPreferredNetwork:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->mCurPreferredNetwork:I

    if-ne v5, v6, :cond_8

    .line 271
    const-string v5, "data_roaming"

    const/4 v6, 0x0

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    goto :goto_0

    .line 273
    :cond_8
    iget v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->mCurPreferredNetwork:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_9

    .line 275
    const-string v5, "data_roaming_slot2"

    const/4 v6, 0x0

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    goto/16 :goto_0

    .line 278
    :cond_9
    const-string v5, "QuickSettingRoaming"

    const-string v6, "!!!Current Preferred Network value is wrong!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 284
    :catch_0
    move-exception v2

    .line 286
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 281
    .end local v2           #e:Ljava/lang/Exception;
    :cond_a
    :try_start_1
    const-string v5, "data_roaming"

    const/4 v6, 0x0

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    goto/16 :goto_0
.end method

.method private setContentView(Landroid/widget/TextView;Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;)Z
    .locals 6
    .parameter "_textview"
    .parameter "_imageview"
    .parameter "_indicatorview"

    .prologue
    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 164
    .local v0, startTime:J
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 165
    :cond_0
    const/4 v2, 0x0

    .line 173
    :goto_0
    return v2

    .line 167
    :cond_1
    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->textview:Landroid/widget/TextView;

    .line 168
    iput-object p2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    .line 169
    iput-object p3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->indicator:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    .line 170
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->startObserve()V

    .line 172
    const-string v2, "QuickSettingRoaming"

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

    .line 173
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private startObserve()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 191
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    if-nez v1, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    const-string v1, "QuickSettingRoaming"

    const-string v2, "roamingObserver.startObserve"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 198
    .local v0, resolver:Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 202
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->observerRegister:Z

    if-ne v1, v4, :cond_2

    .line 204
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->roamingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 205
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->observerRegister:Z

    .line 208
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->observerRegister:Z

    if-nez v1, :cond_3

    .line 210
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->observerRegister:Z

    .line 211
    sget v1, Lcom/android/systemui/statusbar/StatusBarFlag;->SKU_ID:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_4

    .line 212
    const-string v1, "vzw_global_roaming_options"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->roamingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 228
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->getRoamingState()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->updateRoamingStats(I)V

    goto :goto_0

    .line 213
    :cond_4
    sget v1, Lcom/android/systemui/statusbar/StatusBarFlag;->SKU_ID:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_5

    .line 214
    const-string v1, "sprint_international_data_roaming"

    invoke-static {v1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->roamingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 215
    const-string v1, "sprint_international_voice_roaming"

    invoke-static {v1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->roamingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 216
    const-string v1, "sprint_domestic_data_roaming"

    invoke-static {v1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->roamingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 217
    const-string v1, "sprint_domestic_voice_roaming"

    invoke-static {v1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->roamingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_1

    .line 219
    :cond_5
    sget-boolean v1, Lcom/android/systemui/statusbar/StatusBarFlag;->ROAMING_PREFERRED_SLOT:Z

    if-eqz v1, :cond_6

    .line 220
    const-string v1, "user_preferred_network"

    invoke-static {v1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->roamingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 221
    const-string v1, "data_roaming"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->roamingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 222
    const-string v1, "data_roaming_slot2"

    invoke-static {v1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->roamingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_1

    .line 225
    :cond_6
    const-string v1, "data_roaming"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->roamingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_1
.end method

.method private updateRoamingStats(I)V
    .locals 4
    .parameter "stats"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 233
    iput p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->mCurrentState:I

    .line 234
    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    iget v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->mCurrentState:I

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->setOverlayEnable(Z)V

    .line 235
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->indicator:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    iget v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->mCurrentState:I

    if-ne v3, v1, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->setLevel(II)V

    .line 236
    return-void

    :cond_1
    move v0, v2

    .line 234
    goto :goto_0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 4

    .prologue
    .line 67
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->onAttachedToWindow()V

    .line 69
    const v1, 0x7f070029

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f070027

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    const v3, 0x7f070028

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->setContentView(Landroid/widget/TextView;Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;)Z

    move-result v0

    .line 74
    .local v0, success:Z
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 77
    new-instance v1, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming$1;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->onLocaleChanged()V

    .line 141
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->removeSelfIfNeed(Landroid/os/Handler;)V

    .line 139
    const-string v1, "QuickSettingRoaming"

    const-string v2, "!!!!!initialize set content fail"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 146
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->onDetachedFromWindow()V

    .line 148
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 150
    .local v0, resolver:Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->observerRegister:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 152
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->roamingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 153
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->observerRegister:Z

    .line 156
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->setOnOverlayChangeListener(I)V

    .line 158
    return-void
.end method

.method public onLocaleChanged()V
    .locals 3

    .prologue
    .line 356
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 358
    .local v0, resource:Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->textview:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 360
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->textview:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->textview:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/util/res/HtcResUtil;->isInAllCapsLocale(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 363
    :cond_0
    return-void
.end method

.method public setRoamingState(Z)V
    .locals 6
    .parameter "enable"

    .prologue
    const/4 v2, 0x0

    .line 296
    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 298
    .local v0, contentResolver:Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 299
    .local v1, setting:I
    :goto_0
    const-string v3, "QuickSettingRoaming"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setRoamingState - setting = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    new-instance v3, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming$3;

    invoke-direct {v3, p0, v1, v0, p1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming$3;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;ILandroid/content/ContentResolver;Z)V

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 349
    return-void

    .end local v1           #setting:I
    :cond_0
    move v1, v2

    .line 298
    goto :goto_0
.end method
