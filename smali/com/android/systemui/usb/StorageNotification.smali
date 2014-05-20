.class public Lcom/android/systemui/usb/StorageNotification;
.super Lcom/android/systemui/SystemUI;
.source "StorageNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/usb/StorageNotification$3;,
        Lcom/android/systemui/usb/StorageNotification$StorageNotificationEventListener;,
        Lcom/android/systemui/usb/StorageNotification$StorageType;
    }
.end annotation


# static fields
.field private static HTC_CUSTOMIZATION_KEY_SUPPORT_3LM:Ljava/lang/String;

.field private static HTC_CUSTOMIZATION_NAME_SYSTEM:Ljava/lang/String;

.field private static HTC_DEBUG:Z

.field private static mCustManager:Lcom/htc/customization/HtcCustomizationManager;

.field private static mCustReader:Lcom/htc/customization/HtcCustomizationReader;


# instance fields
.field private mAsyncEventHandler:Landroid/os/Handler;

.field mHandler:Landroid/os/Handler;

.field private mMediaStorageNotification:Landroid/app/Notification;

.field private mStartupHandler:Landroid/os/Handler;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mUmsAvailable:Z

.field mWakelockScreen:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-string v0, "System"

    sput-object v0, Lcom/android/systemui/usb/StorageNotification;->HTC_CUSTOMIZATION_NAME_SYSTEM:Ljava/lang/String;

    .line 58
    const-string v0, "support_3lm"

    sput-object v0, Lcom/android/systemui/usb/StorageNotification;->HTC_CUSTOMIZATION_KEY_SUPPORT_3LM:Ljava/lang/String;

    .line 63
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/systemui/usb/StorageNotification;->HTC_DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 104
    new-instance v0, Lcom/android/systemui/usb/StorageNotification$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/usb/StorageNotification$1;-><init>(Lcom/android/systemui/usb/StorageNotification;)V

    iput-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mHandler:Landroid/os/Handler;

    .line 166
    return-void
.end method

.method private WakeScreenOn()V
    .locals 4

    .prologue
    .line 860
    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mWakelockScreen:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 861
    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mWakelockScreen:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 863
    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 864
    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 865
    .local v0, pm:Landroid/os/PowerManager;
    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 868
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/usb/StorageNotification;)Landroid/app/Notification;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 49
    sget-boolean v0, Lcom/android/systemui/usb/StorageNotification;->HTC_DEBUG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/usb/StorageNotification;)Landroid/os/storage/StorageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/usb/StorageNotification;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->onUsbMassStorageConnectionChangedAsync(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/usb/StorageNotification;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mAsyncEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/usb/StorageNotification;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/usb/StorageNotification;->onStorageStateChangedAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/usb/StorageNotification;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/systemui/usb/StorageNotification;->startAsync()V

    return-void
.end method

.method private checkIfToastShouldBeShown(I)Z
    .locals 1
    .parameter "titleId"

    .prologue
    .line 903
    const v0, 0x1040488

    if-eq p1, v0, :cond_0

    const v0, 0x20401a2

    if-eq p1, v0, :cond_0

    const v0, 0x307010b

    if-eq p1, v0, :cond_0

    const v0, 0x1040490

    if-eq p1, v0, :cond_0

    const v0, 0x3070112

    if-eq p1, v0, :cond_0

    const v0, 0x1040492

    if-eq p1, v0, :cond_0

    const v0, 0x3070114

    if-eq p1, v0, :cond_0

    const v0, 0x3070117

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getCustomizationReader(Ljava/lang/String;)Lcom/htc/customization/HtcCustomizationReader;
    .locals 3
    .parameter "name"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 917
    sget-object v0, Lcom/android/systemui/usb/StorageNotification;->mCustManager:Lcom/htc/customization/HtcCustomizationManager;

    if-nez v0, :cond_1

    .line 918
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/usb/StorageNotification;->mCustManager:Lcom/htc/customization/HtcCustomizationManager;

    if-eqz v0, :cond_0

    .line 919
    sget-object v0, Lcom/android/systemui/usb/StorageNotification;->mCustManager:Lcom/htc/customization/HtcCustomizationManager;

    invoke-virtual {v0, p0, v2, v1}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    .line 923
    :goto_0
    return-object v0

    .line 921
    :cond_0
    sget-object v0, Lcom/android/systemui/usb/StorageNotification;->mCustReader:Lcom/htc/customization/HtcCustomizationReader;

    goto :goto_0

    .line 923
    :cond_1
    sget-object v0, Lcom/android/systemui/usb/StorageNotification;->mCustManager:Lcom/htc/customization/HtcCustomizationManager;

    invoke-virtual {v0, p0, v2, v1}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    goto :goto_0
.end method

.method private getRemovableStorageDirectory()Ljava/lang/String;
    .locals 2

    .prologue
    .line 843
    const/4 v0, 0x0

    .line 845
    .local v0, StoragePath:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->hasRemovableStorageSlot()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 846
    invoke-static {}, Landroid/os/Environment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 855
    :goto_0
    return-object v0

    .line 848
    :cond_0
    invoke-static {}, Landroid/os/Environment;->hasInternalFat()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 849
    const/4 v0, 0x0

    goto :goto_0

    .line 852
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getStorageTypeByPath(Ljava/lang/String;)Lcom/android/systemui/usb/StorageNotification$StorageType;
    .locals 1
    .parameter "path"

    .prologue
    .line 875
    if-nez p1, :cond_0

    .line 876
    sget-object v0, Lcom/android/systemui/usb/StorageNotification$StorageType;->SD_CARD:Lcom/android/systemui/usb/StorageNotification$StorageType;

    .line 884
    :goto_0
    return-object v0

    .line 877
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getUsbDeviceDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 878
    sget-object v0, Lcom/android/systemui/usb/StorageNotification$StorageType;->USB_STORAGE:Lcom/android/systemui/usb/StorageNotification$StorageType;

    goto :goto_0

    .line 881
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/usb/StorageNotification;->getRemovableStorageDirectory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 882
    sget-object v0, Lcom/android/systemui/usb/StorageNotification$StorageType;->SD_CARD:Lcom/android/systemui/usb/StorageNotification$StorageType;

    goto :goto_0

    .line 884
    :cond_2
    sget-object v0, Lcom/android/systemui/usb/StorageNotification$StorageType;->PHONE_STORAGE:Lcom/android/systemui/usb/StorageNotification$StorageType;

    goto :goto_0
.end method

.method private onStorageStateChangedAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 251
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    .line 252
    :cond_0
    const-string v0, "StorageNotification"

    const-string v1, "path==null || oldState==null || newState==null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_1
    :goto_0
    return-void

    .line 261
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->getStorageTypeByPath(Ljava/lang/String;)Lcom/android/systemui/usb/StorageNotification$StorageType;

    move-result-object v7

    .line 263
    const-string v0, "shared"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 284
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mHandler:Landroid/os/Handler;

    const v1, 0x15666

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 285
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mHandler:Landroid/os/Handler;

    const v1, 0x15667

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 286
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 287
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto :goto_0

    .line 289
    :cond_3
    const-string v0, "checking"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 299
    sget-object v0, Lcom/android/systemui/usb/StorageNotification$3;->$SwitchMap$com$android$systemui$usb$StorageNotification$StorageType:[I

    invoke-virtual {v7}, Lcom/android/systemui/usb/StorageNotification$StorageType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 314
    const v1, 0x20401a2

    .line 315
    const v2, 0x20401a3

    .line 316
    const v3, 0x10800ab

    .line 321
    :goto_1
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 324
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto :goto_0

    .line 301
    :pswitch_0
    const v1, 0x1040488

    .line 302
    const v2, 0x1040489

    .line 303
    const v3, 0x10800ab

    .line 304
    invoke-direct {p0}, Lcom/android/systemui/usb/StorageNotification;->WakeScreenOn()V

    goto :goto_1

    .line 307
    :pswitch_1
    const v1, 0x307010b

    .line 308
    const v2, 0x1040489

    .line 309
    const v3, 0x10800ab

    .line 310
    invoke-direct {p0}, Lcom/android/systemui/usb/StorageNotification;->WakeScreenOn()V

    goto :goto_1

    .line 325
    :cond_4
    const-string v0, "mounted"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 330
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 333
    sget-object v0, Lcom/android/systemui/usb/StorageNotification$StorageType;->USB_STORAGE:Lcom/android/systemui/usb/StorageNotification$StorageType;

    if-ne v7, v0, :cond_5

    .line 335
    const v1, 0x3070117

    const v2, 0x1040489

    const v3, 0x10800ab

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 340
    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_0

    .line 343
    :cond_6
    const-string v0, "mounted_ro"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 351
    sget-object v0, Lcom/android/systemui/usb/StorageNotification;->HTC_CUSTOMIZATION_NAME_SYSTEM:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/systemui/usb/StorageNotification;->getCustomizationReader(Ljava/lang/String;)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/usb/StorageNotification;->mCustReader:Lcom/htc/customization/HtcCustomizationReader;

    .line 352
    sget-object v0, Lcom/android/systemui/usb/StorageNotification;->mCustReader:Lcom/htc/customization/HtcCustomizationReader;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/android/systemui/usb/StorageNotification;->mCustReader:Lcom/htc/customization/HtcCustomizationReader;

    sget-object v1, Lcom/android/systemui/usb/StorageNotification;->HTC_CUSTOMIZATION_KEY_SUPPORT_3LM:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/android/systemui/usb/StorageNotification$StorageType;->SD_CARD:Lcom/android/systemui/usb/StorageNotification$StorageType;

    if-ne v7, v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sd_encryption"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 358
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-string v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 360
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 361
    const/4 v1, 0x0

    .line 362
    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_2
    if-ge v2, v4, :cond_14

    aget-object v0, v3, v2

    .line 363
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 369
    :goto_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 370
    iget-object v2, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/internal/app/ExternalMediaFormatActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 371
    if-eqz v0, :cond_7

    .line 372
    const-string v2, "storage_volume"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 375
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 376
    const v1, 0x30700de

    const v2, 0x30700df

    const v3, 0x108007b

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 362
    :cond_8
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 386
    :cond_9
    const-string v0, "StorageNotification"

    const-string v1, "Media Mounted, read only"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.intent.action.REMOUNT_MEDIA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 388
    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static {v1, v2, v0, v3, v4}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v6

    .line 390
    sget-object v0, Lcom/android/systemui/usb/StorageNotification$3;->$SwitchMap$com$android$systemui$usb$StorageNotification$StorageType:[I

    invoke-virtual {v7}, Lcom/android/systemui/usb/StorageNotification$StorageType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 397
    const v2, 0x20401d8

    .line 400
    :goto_4
    const v1, 0x20401d7

    const v3, 0x108007b

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 404
    iget-boolean v0, p0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_0

    .line 392
    :pswitch_2
    const v2, 0x3070116

    .line 393
    goto :goto_4

    .line 408
    :cond_a
    const-string v0, "unmounted"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 414
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v0

    if-nez v0, :cond_e

    .line 415
    const-string v0, "shared"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 420
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 421
    iget-boolean v0, p0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    .line 465
    :goto_5
    sget-object v0, Lcom/android/systemui/usb/StorageNotification$StorageType;->SD_CARD:Lcom/android/systemui/usb/StorageNotification$StorageType;

    if-eq v7, v0, :cond_b

    sget-object v0, Lcom/android/systemui/usb/StorageNotification$StorageType;->USB_STORAGE:Lcom/android/systemui/usb/StorageNotification$StorageType;

    if-ne v7, v0, :cond_1

    :cond_b
    const-string v0, "removed"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 466
    invoke-direct {p0}, Lcom/android/systemui/usb/StorageNotification;->WakeScreenOn()V

    goto/16 :goto_0

    .line 429
    :cond_c
    sget-object v0, Lcom/android/systemui/usb/StorageNotification$3;->$SwitchMap$com$android$systemui$usb$StorageNotification$StorageType:[I

    invoke-virtual {v7}, Lcom/android/systemui/usb/StorageNotification$StorageType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2

    .line 452
    :goto_6
    iget-boolean v0, p0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto :goto_5

    .line 431
    :pswitch_3
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 432
    const v1, 0x1040490

    const v2, 0x1040491

    const v3, 0x108007a

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    goto :goto_6

    .line 439
    :cond_d
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    goto :goto_6

    .line 444
    :pswitch_4
    const v1, 0x3070112

    const v2, 0x3070113

    const v3, 0x108007a

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    goto :goto_6

    .line 459
    :cond_e
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 460
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto :goto_5

    .line 469
    :cond_f
    const-string v0, "nofs"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 475
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 476
    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/internal/app/ExternalMediaFormatActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 477
    const-string v1, "formatPath"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 478
    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 483
    sget-object v0, Lcom/android/systemui/usb/StorageNotification$3;->$SwitchMap$com$android$systemui$usb$StorageNotification$StorageType:[I

    invoke-virtual {v7}, Lcom/android/systemui/usb/StorageNotification$StorageType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3

    .line 499
    const v1, 0x20401a4

    .line 500
    const v2, 0x20401a5

    .line 501
    const v3, 0x108007b

    .line 506
    :goto_7
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 509
    iget-boolean v0, p0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_0

    .line 485
    :pswitch_5
    const v1, 0x104048a

    .line 486
    const v2, 0x104048b

    .line 487
    const v3, 0x108007b

    .line 488
    goto :goto_7

    .line 490
    :pswitch_6
    const v1, 0x307010c

    .line 491
    const v2, 0x307010d

    .line 492
    const v3, 0x108007b

    .line 495
    const/4 v6, 0x0

    .line 496
    goto :goto_7

    .line 510
    :cond_10
    const-string v0, "unmountable"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 516
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 517
    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/internal/app/ExternalMediaFormatActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 518
    const-string v1, "formatPath"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 519
    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 524
    sget-object v0, Lcom/android/systemui/usb/StorageNotification$3;->$SwitchMap$com$android$systemui$usb$StorageNotification$StorageType:[I

    invoke-virtual {v7}, Lcom/android/systemui/usb/StorageNotification$StorageType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_4

    .line 540
    const v1, 0x20401a6

    .line 541
    const v2, 0x20401a7

    .line 542
    const v3, 0x108007b

    .line 547
    :goto_8
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 550
    iget-boolean v0, p0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_0

    .line 526
    :pswitch_7
    const v1, 0x104048c

    .line 527
    const v2, 0x104048d

    .line 528
    const v3, 0x108007b

    .line 529
    goto :goto_8

    .line 531
    :pswitch_8
    const v1, 0x307010e

    .line 532
    const v2, 0x307010f

    .line 533
    const v3, 0x108007b

    .line 536
    const/4 v6, 0x0

    .line 537
    goto :goto_8

    .line 553
    :cond_11
    const-string v0, "removed"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 560
    sget-object v0, Lcom/android/systemui/usb/StorageNotification$3;->$SwitchMap$com$android$systemui$usb$StorageNotification$StorageType:[I

    invoke-virtual {v7}, Lcom/android/systemui/usb/StorageNotification$StorageType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_5

    .line 568
    const v1, 0x1040492

    .line 569
    const v2, 0x1040493

    .line 572
    :goto_9
    const v3, 0x108007b

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 576
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    .line 578
    invoke-direct {p0}, Lcom/android/systemui/usb/StorageNotification;->WakeScreenOn()V

    goto/16 :goto_0

    .line 562
    :pswitch_9
    const v1, 0x3070114

    .line 563
    const v2, 0x3070115

    .line 564
    goto :goto_9

    .line 579
    :cond_12
    const-string v0, "bad_removal"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 585
    sget-object v0, Lcom/android/systemui/usb/StorageNotification$3;->$SwitchMap$com$android$systemui$usb$StorageNotification$StorageType:[I

    invoke-virtual {v7}, Lcom/android/systemui/usb/StorageNotification$StorageType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_6

    .line 593
    const v1, 0x104048e

    .line 594
    const v2, 0x104048f

    .line 598
    :goto_a
    const v3, 0x108008a

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 601
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    .line 602
    invoke-direct {p0}, Lcom/android/systemui/usb/StorageNotification;->WakeScreenOn()V

    .line 605
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mHandler:Landroid/os/Handler;

    const v1, 0x15668

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 606
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mHandler:Landroid/os/Handler;

    const v2, 0x15668

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 587
    :pswitch_a
    const v1, 0x3070110

    .line 588
    const v2, 0x3070111

    .line 589
    goto :goto_a

    .line 612
    :cond_13
    const-string v0, "StorageNotification"

    const-string v1, "Ignoring unknown state {%s}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_14
    move-object v0, v1

    goto/16 :goto_3

    .line 299
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 390
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
    .end packed-switch

    .line 429
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 483
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 524
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 560
    :pswitch_data_5
    .packed-switch 0x2
        :pswitch_9
    .end packed-switch

    .line 585
    :pswitch_data_6
    .packed-switch 0x2
        :pswitch_a
    .end packed-switch
.end method

.method private onUsbMassStorageConnectionChangedAsync(Z)V
    .locals 2
    .parameter "connected"

    .prologue
    .line 227
    iput-boolean p1, p0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    .line 232
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, st:Ljava/lang/String;
    if-eqz p1, :cond_1

    const-string v1, "removed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "checking"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 242
    :cond_0
    const/4 p1, 0x0

    .line 244
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    .line 245
    return-void
.end method

.method private declared-synchronized setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V
    .locals 21
    .parameter "titleId"
    .parameter "messageId"
    .parameter "icon"
    .parameter "visible"
    .parameter "dismissable"
    .parameter "pi"

    .prologue
    .line 727
    monitor-enter p0

    if-nez p4, :cond_1

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    move-object/from16 v17, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v17, :cond_1

    .line 839
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 731
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "notification"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationManager;

    .line 734
    .local v10, notificationManager:Landroid/app/NotificationManager;
    if-eqz v10, :cond_0

    .line 738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    if-eqz p4, :cond_4

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v9, v0, Landroid/app/Notification;->icon:I

    .line 744
    .local v9, notificationId:I
    const/16 v17, 0x0

    sget-object v18, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v9, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 756
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v13

    .line 757
    .local v13, resource:Landroid/content/res/Resources;
    const v17, 0x20401a2

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 758
    .local v11, phoneStorageTitle:Ljava/lang/CharSequence;
    const v17, 0x307010b

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 759
    .local v16, usbStorageCheckingTitle:Ljava/lang/CharSequence;
    const v17, 0x10800ab

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    if-eqz v11, :cond_4

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4

    if-eqz v16, :cond_4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 764
    :cond_2
    sget-boolean v17, Lcom/android/systemui/usb/StorageNotification;->HTC_DEBUG:Z

    if-eqz v17, :cond_3

    const-string v17, "StorageNotification"

    const-string v18, "About to remove MSG_SET_MEDIA_STORAGE_TOAST!"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const v18, 0x15667

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->removeMessages(I)V

    .line 771
    .end local v9           #notificationId:I
    .end local v11           #phoneStorageTitle:Ljava/lang/CharSequence;
    .end local v13           #resource:Landroid/content/res/Resources;
    .end local v16           #usbStorageCheckingTitle:Ljava/lang/CharSequence;
    :cond_4
    if-eqz p4, :cond_7

    .line 772
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v12

    .line 773
    .local v12, r:Landroid/content/res/Resources;
    move/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    .line 774
    .local v14, title:Ljava/lang/CharSequence;
    move/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 776
    .local v5, message:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    move-object/from16 v17, v0

    if-nez v17, :cond_5

    .line 777
    new-instance v17, Landroid/app/Notification;

    invoke-direct/range {v17 .. v17}, Landroid/app/Notification;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    .line 778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    move-object/from16 v17, v0

    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Landroid/app/Notification;->when:J

    .line 781
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/app/Notification;->defaults:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, -0x2

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/app/Notification;->defaults:I

    .line 783
    if-eqz p5, :cond_a

    .line 784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    move-object/from16 v17, v0

    const/16 v18, 0x10

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 789
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v14, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 790
    if-nez p6, :cond_6

    .line 791
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 792
    .local v4, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    sget-object v20, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-static {v0, v1, v4, v2, v3}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p6

    .line 796
    .end local v4           #intent:Landroid/content/Intent;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    move-object/from16 v17, v0

    move/from16 v0, p3

    move-object/from16 v1, v17

    iput v0, v1, Landroid/app/Notification;->icon:I

    .line 797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v14, v5, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 802
    .end local v5           #message:Ljava/lang/CharSequence;
    .end local v12           #r:Landroid/content/res/Resources;
    .end local v14           #title:Ljava/lang/CharSequence;
    :cond_7
    const v7, 0x15666

    .line 803
    .local v7, nMessage:I
    const/4 v8, 0x0

    .line 804
    .local v8, nMessageArg:I
    const/4 v15, 0x0

    .line 806
    .local v15, toastString:Ljava/lang/String;
    const/16 v17, 0x1

    move/from16 v0, p4

    move/from16 v1, v17

    if-ne v0, v1, :cond_8

    .line 807
    const/4 v8, 0x1

    .line 810
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/usb/StorageNotification;->checkIfToastShouldBeShown(I)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 812
    const v7, 0x15667

    .line 814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 821
    :cond_8
    if-eqz v15, :cond_b

    .line 822
    sget-boolean v17, Lcom/android/systemui/usb/StorageNotification;->HTC_DEBUG:Z

    if-eqz v17, :cond_9

    const-string v17, "StorageNotification"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "About to send toast for \""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v7, v8, v1, v15}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 829
    .local v6, msg:Landroid/os/Message;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const-wide/16 v18, 0x1f4

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-virtual {v0, v6, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 727
    .end local v6           #msg:Landroid/os/Message;
    .end local v7           #nMessage:I
    .end local v8           #nMessageArg:I
    .end local v10           #notificationManager:Landroid/app/NotificationManager;
    .end local v15           #toastString:Ljava/lang/String;
    :catchall_0
    move-exception v17

    monitor-exit p0

    throw v17

    .line 786
    .restart local v5       #message:Ljava/lang/CharSequence;
    .restart local v10       #notificationManager:Landroid/app/NotificationManager;
    .restart local v12       #r:Landroid/content/res/Resources;
    .restart local v14       #title:Ljava/lang/CharSequence;
    :cond_a
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/app/Notification;->flags:I

    goto/16 :goto_1

    .line 825
    .end local v5           #message:Ljava/lang/CharSequence;
    .end local v12           #r:Landroid/content/res/Resources;
    .end local v14           #title:Ljava/lang/CharSequence;
    .restart local v7       #nMessage:I
    .restart local v8       #nMessageArg:I
    .restart local v15       #toastString:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v7, v8, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    .restart local v6       #msg:Landroid/os/Message;
    goto :goto_2
.end method

.method private startAsync()V
    .locals 6

    .prologue
    .line 202
    iget-object v4, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-string v5, "storage"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageManager;

    iput-object v4, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 203
    iget-object v4, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v4}, Landroid/os/storage/StorageManager;->isUsbMassStorageConnected()Z

    move-result v0

    .line 209
    .local v0, connected:Z
    iget-object v4, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 210
    .local v2, pm:Landroid/os/PowerManager;
    const v4, 0x3000000a

    const-string v5, "StorageNotification_SWake"

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/usb/StorageNotification;->mWakelockScreen:Landroid/os/PowerManager$WakeLock;

    .line 214
    iget-object v4, p0, Lcom/android/systemui/usb/StorageNotification;->mWakelockScreen:Landroid/os/PowerManager$WakeLock;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 216
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "SystemUI StorageNotification"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 217
    .local v3, thr:Landroid/os/HandlerThread;
    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 218
    new-instance v4, Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/android/systemui/usb/StorageNotification;->mAsyncEventHandler:Landroid/os/Handler;

    .line 220
    new-instance v1, Lcom/android/systemui/usb/StorageNotification$StorageNotificationEventListener;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Lcom/android/systemui/usb/StorageNotification$StorageNotificationEventListener;-><init>(Lcom/android/systemui/usb/StorageNotification;Lcom/android/systemui/usb/StorageNotification$1;)V

    .line 221
    .local v1, listener:Lcom/android/systemui/usb/StorageNotification$StorageNotificationEventListener;
    invoke-virtual {v1, v0}, Lcom/android/systemui/usb/StorageNotification$StorageNotificationEventListener;->onUsbMassStorageConnectionChanged(Z)V

    .line 222
    iget-object v4, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v4, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 223
    return-void
.end method


# virtual methods
.method public start()V
    .locals 3

    .prologue
    .line 189
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SystemUI StorageNotification Startup"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 190
    .local v0, startupThread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 191
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mStartupHandler:Landroid/os/Handler;

    .line 193
    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mStartupHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/usb/StorageNotification$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/usb/StorageNotification$2;-><init>(Lcom/android/systemui/usb/StorageNotification;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 199
    return-void
.end method

.method updateUsbMassStorageNotification(Z)V
    .locals 0
    .parameter "available"

    .prologue
    .line 638
    return-void
.end method
