.class public Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;
.super Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
.source "QuickSettingAPN.java"


# static fields
.field private static final iconResource:[I


# instance fields
.field private final ROAMING_DEBUG:Z

.field private apnObserver:Landroid/database/ContentObserver;

.field private connectManager:Landroid/net/ConnectivityManager;

.field private handler:Landroid/os/Handler;

.field private htcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

.field private imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

.field private indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

.field private loadAPNtask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mode:I

.field private observerRegister:Z

.field private receiver:Landroid/content/BroadcastReceiver;

.field private receiverRegister:Z

.field private roamingInCDMA:Z

.field private serviceState:Landroid/telephony/ServiceState;

.field private telephonyManager:Landroid/telephony/TelephonyManager;

.field private toggleAPNtask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->iconResource:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xa9t 0x1t 0x2t 0x7ft
        0xaat 0x1t 0x2t 0x7ft
        0xabt 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->handler:Landroid/os/Handler;

    iput-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->connectManager:Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->telephonyManager:Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->receiverRegister:Z

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->observerRegister:Z

    iput-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->loadAPNtask:Landroid/os/AsyncTask;

    iput v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->mode:I

    iput v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->type:I

    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN$3;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->receiver:Landroid/content/BroadcastReceiver;

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->roamingInCDMA:Z

    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN$5;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->handler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN$5;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->apnObserver:Landroid/database/ContentObserver;

    iput-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->toggleAPNtask:Landroid/os/AsyncTask;

    iput-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->htcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->serviceState:Landroid/telephony/ServiceState;

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->ROAMING_DEBUG:Z

    const-string v0, "apn"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->tileLabel:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->switchAPNstate()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->Log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->isUnderDataRoaming()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->roamingInCDMA:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->getSelectAPN()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->isCTsim()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->getNextSelectKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->setSelectAPNkey(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->type:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->type:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->typeToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->updateAPNstate()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->updateAPNVisual(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->mode:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->networkTypeToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->modeToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;)Landroid/telephony/ServiceState;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->serviceState:Landroid/telephony/ServiceState;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->serviceState:Landroid/telephony/ServiceState;

    return-object p1
.end method

.method private getNextSelectKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 17

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    :try_start_0
    sget-object v2, Landroid/provider/Telephony$CdmaCarriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "name"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "apn"

    aput-object v5, v3, v4

    const-string v4, "current=\'1\'"

    const/4 v5, 0x0

    const-string v6, "name ASC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_8

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    sget-boolean v2, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->DEBUG:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string v2, "QuickSettingAPN"

    const-string v3, "------------------------------------------------------------------"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_7

    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v7, :cond_1

    const-string v2, "ctnet"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v12, v8

    :cond_1
    if-eqz v7, :cond_2

    const-string v2, "ctwap"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v13, v8

    :cond_2
    sget-boolean v2, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->DEBUG:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    const-string v2, "QuickSettingAPN"

    const-string v3, "key:%-5s APN:%-10s name:%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    const/4 v5, 0x1

    aput-object v7, v4, v5

    const/4 v5, 0x2

    aput-object v9, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v14

    :try_start_1
    invoke-virtual {v14}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v2, "QuickSettingAPN"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!!!!!get next select APN key fail:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v10, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    const/4 v10, 0x0

    :cond_4
    :goto_1
    const/4 v11, 0x0

    if-eqz p1, :cond_a

    const-string v2, "ctnet"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v12, :cond_5

    move-object v11, v12

    :cond_5
    if-eqz v13, :cond_6

    move-object v11, v13

    :cond_6
    :goto_2
    const-string v2, "QuickSettingAPN"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNextSelectKey:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v15

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " desireAPNKey:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " selectAPN:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ctnetAPNKey:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ctwapAPNKey:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v11

    :cond_7
    :try_start_2
    sget-boolean v2, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->DEBUG:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    const-string v2, "QuickSettingAPN"

    const-string v3, "------------------------------------------------------------------"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_8
    if-eqz v10, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    const/4 v10, 0x0

    goto :goto_1

    :catchall_0
    move-exception v2

    if-eqz v10, :cond_9

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    const/4 v10, 0x0

    :cond_9
    throw v2

    :cond_a
    if-eqz p1, :cond_c

    const-string v2, "ctwap"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    if-eqz v13, :cond_b

    move-object v11, v13

    :cond_b
    if-eqz v12, :cond_6

    move-object v11, v12

    goto :goto_2

    :cond_c
    if-eqz v13, :cond_d

    move-object v11, v13

    :cond_d
    if-eqz v12, :cond_6

    move-object v11, v12

    goto :goto_2
.end method

.method public static getQSIconID()I
    .locals 1

    const v0, 0x7f0201a8

    return v0
.end method

.method public static getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0a00d4

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSelectAPN()Ljava/lang/String;
    .locals 13

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    const-string v1, "content://cdmaapn/carriers/preferapn"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "apn"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    :cond_1
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    :cond_2
    :goto_1
    const-string v1, "QuickSettingAPN"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSelectAPN:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v11

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " slectKey:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " selectAPN:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " selectName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v7

    goto :goto_0

    :catch_0
    move-exception v6

    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "QuickSettingAPN"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!!!!get select CDMA APN fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    goto :goto_1

    :catchall_0
    move-exception v1

    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    :cond_3
    throw v1
.end method

.method private isCTsim()Z
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->htcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->htcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    :cond_0
    const-string v0, ""

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->htcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->htcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/htc/service/HtcTelephonyManager;->getIccOperator(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v1, "46003"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isUnderDataRoaming()Z
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->connectManager:Landroid/net/ConnectivityManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->telephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v3, :cond_2

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->connectManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v1

    goto :goto_0
.end method

.method private modeToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const-string v0, "MODE_UNKNOWN"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "MODE_NONE"

    goto :goto_0

    :pswitch_1
    const-string v0, "MODE_CTNET"

    goto :goto_0

    :pswitch_2
    const-string v0, "MODE_CTWAP"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private networkTypeToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "TYPE_BLUETOOTH"

    goto :goto_0

    :pswitch_2
    const-string v0, "TYPE_ETHERNET"

    goto :goto_0

    :pswitch_3
    const-string v0, "TYPE_MOBILE"

    goto :goto_0

    :pswitch_4
    const-string v0, "TYPE_DUMMY"

    goto :goto_0

    :pswitch_5
    const-string v0, "TYPE_WIFI"

    goto :goto_0

    :pswitch_6
    const-string v0, "TYPE_WIMAX"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_1
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method private setContentView(Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;)Z
    .locals 9

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v4, v6

    :goto_0
    return v4

    :cond_1
    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v7, "phone"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v7, "connectivity"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    iput-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->connectManager:Landroid/net/ConnectivityManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->connectManager:Landroid/net/ConnectivityManager;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->telephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v4, :cond_3

    :cond_2
    move v4, v6

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->updateAPNstate()V

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->receiverRegister:Z

    if-nez v4, :cond_4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v7, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->receiverRegister:Z

    :cond_4
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->observerRegister:Z

    if-ne v4, v5, :cond_5

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->apnObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->observerRegister:Z

    :cond_5
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->observerRegister:Z

    if-nez v4, :cond_6

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->observerRegister:Z

    sget-object v4, Landroid/provider/Telephony$CdmaCarriers;->CONTENT_URI:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->apnObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_6
    const-string v4, "QuickSettingAPN"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setContentView:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    goto/16 :goto_0
.end method

.method private setSelectAPNkey(Ljava/lang/String;)V
    .locals 8

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz p1, :cond_0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "apn_id"

    invoke-virtual {v0, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "content://cdmaapn/carriers/preferapn"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v4, "QuickSettingAPN"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setSelectAPNkey:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " APNkey:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startAPNbackgroundTask()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->loadAPNtask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->loadAPNtask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->loadAPNtask:Landroid/os/AsyncTask;

    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN$4;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->loadAPNtask:Landroid/os/AsyncTask;

    return-void
.end method

.method private stopAPNbackgroundTask()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->loadAPNtask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->loadAPNtask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->loadAPNtask:Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method private switchAPNstate()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->toggleAPNtask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->toggleAPNtask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->toggleAPNtask:Landroid/os/AsyncTask;

    :cond_0
    const-string v0, "QuickSettingAPN"

    const-string v1, "click.switchAPNstate!"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->Log(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN$6;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->toggleAPNtask:Landroid/os/AsyncTask;

    return-void
.end method

.method private typeToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "PHONE_TYPE_SIP"

    goto :goto_0

    :pswitch_1
    const-string v0, "PHONE_TYPE_GSM"

    goto :goto_0

    :pswitch_2
    const-string v0, "PHONE_TYPE_CDMA"

    goto :goto_0

    :pswitch_3
    const-string v0, "PHONE_TYPE_NONE"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private updateAPNVisual(I)V
    .locals 5

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    if-nez p1, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1, v3}, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->setLevel(II)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    sget-object v4, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->iconResource:[I

    aget v4, v4, p1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iput p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->mode:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->isUnderDataRoaming()Z

    move-result v0

    if-ne v0, v3, :cond_2

    const/16 v2, 0x8

    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->setVisibility(I)V

    const-string v1, "QuickSettingAPN"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAPNVisual:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->mode:I

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->modeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " roaming:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1
.end method

.method private updateAPNstate()V
    .locals 11

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    if-eqz v7, :cond_0

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->isCTsim()Z

    move-result v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->stopAPNbackgroundTask()V

    const-string v7, "airplane_mode_on"

    invoke-static {v2, v7, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_2

    move v0, v5

    :goto_1
    const-string v7, "QuickSettingAPN"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateAPNstate:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v3

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " isCTsim:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " isAirplaneOn:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v1, v5, :cond_3

    if-nez v0, :cond_3

    move v7, v5

    :goto_2
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->setEnabled(Z)V

    if-nez v1, :cond_4

    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->updateAPNVisual(I)V

    goto :goto_0

    :cond_2
    move v0, v6

    goto :goto_1

    :cond_3
    move v7, v6

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->isUnderDataRoaming()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->roamingInCDMA:Z

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->roamingInCDMA:Z

    if-ne v7, v5, :cond_5

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->setEnabled(Z)V

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->updateAPNVisual(I)V

    :goto_3
    const-string v5, "QuickSettingAPN"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateAPNVisual.roaming:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->roamingInCDMA:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->startAPNbackgroundTask()V

    goto :goto_3
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

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->setContentView(Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;)Z

    move-result v1

    if-ne v1, v4, :cond_2

    new-instance v2, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN$1;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v4}, Landroid/view/View;->setLongClickable(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->getOnLongClickListener()Landroid/view/View$OnLongClickListener;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN$2;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->onLocaleChanged()V

    if-eqz v0, :cond_1

    const v2, 0x7f07002d

    invoke-virtual {p0, v2, v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setTouchDelegate(II)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->removeSelfIfNeed(Landroid/os/Handler;)V

    const-string v2, "QuickSettingAPN"

    const-string v3, "!!!!!initialize set content fail"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->onDetachedFromWindow()V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->receiverRegister:Z

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->receiverRegister:Z

    :cond_0
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->observerRegister:Z

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->apnObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->observerRegister:Z

    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setOnOverlayChangeListener(I)V

    invoke-virtual {p0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v3}, Landroid/view/View;->setLongClickable(Z)V

    invoke-virtual {p0, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

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

    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

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
    .locals 6

    const/4 v5, 0x1

    const/high16 v2, 0x3f80

    const v3, 0x3e99999a

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    if-ne p1, v5, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    const v1, 0x7f07002e

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    if-ne p1, v5, :cond_3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    return-void

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1
.end method

.method public setVisibility(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setVisibility(I)V

    return-void
.end method
