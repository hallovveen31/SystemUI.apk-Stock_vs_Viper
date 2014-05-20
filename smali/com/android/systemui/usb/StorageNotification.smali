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

    const-string v0, "System"

    sput-object v0, Lcom/android/systemui/usb/StorageNotification;->HTC_CUSTOMIZATION_NAME_SYSTEM:Ljava/lang/String;

    const-string v0, "support_3lm"

    sput-object v0, Lcom/android/systemui/usb/StorageNotification;->HTC_CUSTOMIZATION_KEY_SUPPORT_3LM:Ljava/lang/String;

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/systemui/usb/StorageNotification;->HTC_DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    new-instance v0, Lcom/android/systemui/usb/StorageNotification$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/usb/StorageNotification$1;-><init>(Lcom/android/systemui/usb/StorageNotification;)V

    iput-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private WakeScreenOn()V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mWakelockScreen:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mWakelockScreen:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/usb/StorageNotification;)Landroid/app/Notification;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/usb/StorageNotification;->HTC_DEBUG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/usb/StorageNotification;)Landroid/os/storage/StorageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/usb/StorageNotification;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->onUsbMassStorageConnectionChangedAsync(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/usb/StorageNotification;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mAsyncEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/usb/StorageNotification;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/usb/StorageNotification;->onStorageStateChangedAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/usb/StorageNotification;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/usb/StorageNotification;->startAsync()V

    return-void
.end method

.method private checkIfToastShouldBeShown(I)Z
    .locals 1

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

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/android/systemui/usb/StorageNotification;->mCustManager:Lcom/htc/customization/HtcCustomizationManager;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/usb/StorageNotification;->mCustManager:Lcom/htc/customization/HtcCustomizationManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/usb/StorageNotification;->mCustManager:Lcom/htc/customization/HtcCustomizationManager;

    invoke-virtual {v0, p0, v2, v1}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/systemui/usb/StorageNotification;->mCustReader:Lcom/htc/customization/HtcCustomizationReader;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/systemui/usb/StorageNotification;->mCustManager:Lcom/htc/customization/HtcCustomizationManager;

    invoke-virtual {v0, p0, v2, v1}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    goto :goto_0
.end method

.method private getRemovableStorageDirectory()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Environment;->hasRemovableStorageSlot()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/Environment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Environment;->hasInternalFat()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getStorageTypeByPath(Ljava/lang/String;)Lcom/android/systemui/usb/StorageNotification$StorageType;
    .locals 1

    if-nez p1, :cond_0

    sget-object v0, Lcom/android/systemui/usb/StorageNotification$StorageType;->SD_CARD:Lcom/android/systemui/usb/StorageNotification$StorageType;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getUsbDeviceDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/usb/StorageNotification$StorageType;->USB_STORAGE:Lcom/android/systemui/usb/StorageNotification$StorageType;

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/usb/StorageNotification;->getRemovableStorageDirectory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/systemui/usb/StorageNotification$StorageType;->SD_CARD:Lcom/android/systemui/usb/StorageNotification$StorageType;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/systemui/usb/StorageNotification$StorageType;->PHONE_STORAGE:Lcom/android/systemui/usb/StorageNotification$StorageType;

    goto :goto_0
.end method

.method private onStorageStateChangedAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    :cond_0
    const-string v0, "StorageNotification"

    const-string v1, "path==null || oldState==null || newState==null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->getStorageTypeByPath(Ljava/lang/String;)Lcom/android/systemui/usb/StorageNotification$StorageType;

    move-result-object v7

    const-string v0, "shared"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mHandler:Landroid/os/Handler;

    const v1, 0x15666

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mHandler:Landroid/os/Handler;

    const v1, 0x15667

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto :goto_0

    :cond_3
    const-string v0, "checking"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/systemui/usb/StorageNotification$3;->$SwitchMap$com$android$systemui$usb$StorageNotification$StorageType:[I

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const v1, 0x20401a2

    const v2, 0x20401a3

    const v3, 0x10800ab

    :goto_1
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto :goto_0

    :pswitch_0
    const v1, 0x1040488

    const v2, 0x1040489

    const v3, 0x10800ab

    invoke-direct {p0}, Lcom/android/systemui/usb/StorageNotification;->WakeScreenOn()V

    goto :goto_1

    :pswitch_1
    const v1, 0x307010b

    const v2, 0x1040489

    const v3, 0x10800ab

    invoke-direct {p0}, Lcom/android/systemui/usb/StorageNotification;->WakeScreenOn()V

    goto :goto_1

    :cond_4
    const-string v0, "mounted"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    sget-object v0, Lcom/android/systemui/usb/StorageNotification$StorageType;->USB_STORAGE:Lcom/android/systemui/usb/StorageNotification$StorageType;

    if-ne v7, v0, :cond_5

    const v1, 0x3070117

    const v2, 0x1040489

    const v3, 0x10800ab

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_0

    :cond_6
    const-string v0, "mounted_ro"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/android/systemui/usb/StorageNotification;->HTC_CUSTOMIZATION_NAME_SYSTEM:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/systemui/usb/StorageNotification;->getCustomizationReader(Ljava/lang/String;)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/usb/StorageNotification;->mCustReader:Lcom/htc/customization/HtcCustomizationReader;

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

    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sd_encryption"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v3

    const/4 v1, 0x0

    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_2
    if-ge v2, v4, :cond_14

    aget-object v0, v3, v2

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    :goto_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/internal/app/ExternalMediaFormatActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    if-eqz v0, :cond_7

    const-string v2, "storage_volume"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    const v1, 0x30700de

    const v2, 0x30700df

    const v3, 0x108007b

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    :cond_8
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_9
    const-string v0, "StorageNotification"

    const-string v1, "Media Mounted, read only"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.intent.action.REMOUNT_MEDIA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static {v1, v2, v0, v3, v4}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v6

    sget-object v0, Lcom/android/systemui/usb/StorageNotification$3;->$SwitchMap$com$android$systemui$usb$StorageNotification$StorageType:[I

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    const v2, 0x20401d8

    :goto_4
    const v1, 0x20401d7

    const v3, 0x108007b

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    iget-boolean v0, p0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_0

    :pswitch_2
    const v2, 0x3070116

    goto :goto_4

    :cond_a
    const-string v0, "unmounted"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "shared"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    iget-boolean v0, p0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

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

    invoke-direct {p0}, Lcom/android/systemui/usb/StorageNotification;->WakeScreenOn()V

    goto/16 :goto_0

    :cond_c
    sget-object v0, Lcom/android/systemui/usb/StorageNotification$3;->$SwitchMap$com$android$systemui$usb$StorageNotification$StorageType:[I

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2

    :goto_6
    iget-boolean v0, p0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto :goto_5

    :pswitch_3
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    if-eqz v0, :cond_d

    const v1, 0x1040490

    const v2, 0x1040491

    const v3, 0x108007a

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    goto :goto_6

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

    :cond_e
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto :goto_5

    :cond_f
    const-string v0, "nofs"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/internal/app/ExternalMediaFormatActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "formatPath"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    sget-object v0, Lcom/android/systemui/usb/StorageNotification$3;->$SwitchMap$com$android$systemui$usb$StorageNotification$StorageType:[I

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3

    const v1, 0x20401a4

    const v2, 0x20401a5

    const v3, 0x108007b

    :goto_7
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    iget-boolean v0, p0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_0

    :pswitch_5
    const v1, 0x104048a

    const v2, 0x104048b

    const v3, 0x108007b

    goto :goto_7

    :pswitch_6
    const v1, 0x307010c

    const v2, 0x307010d

    const v3, 0x108007b

    const/4 v6, 0x0

    goto :goto_7

    :cond_10
    const-string v0, "unmountable"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/internal/app/ExternalMediaFormatActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "formatPath"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    sget-object v0, Lcom/android/systemui/usb/StorageNotification$3;->$SwitchMap$com$android$systemui$usb$StorageNotification$StorageType:[I

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_4

    const v1, 0x20401a6

    const v2, 0x20401a7

    const v3, 0x108007b

    :goto_8
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    iget-boolean v0, p0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_0

    :pswitch_7
    const v1, 0x104048c

    const v2, 0x104048d

    const v3, 0x108007b

    goto :goto_8

    :pswitch_8
    const v1, 0x307010e

    const v2, 0x307010f

    const v3, 0x108007b

    const/4 v6, 0x0

    goto :goto_8

    :cond_11
    const-string v0, "removed"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/android/systemui/usb/StorageNotification$3;->$SwitchMap$com$android$systemui$usb$StorageNotification$StorageType:[I

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_5

    const v1, 0x1040492

    const v2, 0x1040493

    :goto_9
    const v3, 0x108007b

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    invoke-direct {p0}, Lcom/android/systemui/usb/StorageNotification;->WakeScreenOn()V

    goto/16 :goto_0

    :pswitch_9
    const v1, 0x3070114

    const v2, 0x3070115

    goto :goto_9

    :cond_12
    const-string v0, "bad_removal"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lcom/android/systemui/usb/StorageNotification$3;->$SwitchMap$com$android$systemui$usb$StorageNotification$StorageType:[I

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_6

    const v1, 0x104048e

    const v2, 0x104048f

    :goto_a
    const v3, 0x108008a

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    invoke-direct {p0}, Lcom/android/systemui/usb/StorageNotification;->WakeScreenOn()V

    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mHandler:Landroid/os/Handler;

    const v1, 0x15668

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

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

    :pswitch_a
    const v1, 0x3070110

    const v2, 0x3070111

    goto :goto_a

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

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x2
        :pswitch_9
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x2
        :pswitch_a
    .end packed-switch
.end method

.method private onUsbMassStorageConnectionChangedAsync(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_1

    const-string v1, "removed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "checking"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    return-void
.end method

.method private declared-synchronized setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V
    .locals 21

    monitor-enter p0

    if-nez p4, :cond_1

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    move-object/from16 v17, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v17, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "notification"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationManager;

    if-eqz v10, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    if-eqz p4, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v9, v0, Landroid/app/Notification;->icon:I

    const/16 v17, 0x0

    sget-object v18, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v9, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v13

    const v17, 0x20401a2

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    const v17, 0x307010b

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

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

    :cond_2
    sget-boolean v17, Lcom/android/systemui/usb/StorageNotification;->HTC_DEBUG:Z

    if-eqz v17, :cond_3

    const-string v17, "StorageNotification"

    const-string v18, "About to remove MSG_SET_MEDIA_STORAGE_TOAST!"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const v18, 0x15667

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4
    if-eqz p4, :cond_7

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    move-object/from16 v17, v0

    if-nez v17, :cond_5

    new-instance v17, Landroid/app/Notification;

    invoke-direct/range {v17 .. v17}, Landroid/app/Notification;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    move-object/from16 v17, v0

    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Landroid/app/Notification;->when:J

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

    if-eqz p5, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    move-object/from16 v17, v0

    const/16 v18, 0x10

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/app/Notification;->flags:I

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v14, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-nez p6, :cond_6

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

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

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    move-object/from16 v17, v0

    move/from16 v0, p3

    move-object/from16 v1, v17

    iput v0, v1, Landroid/app/Notification;->icon:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v14, v5, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    :cond_7
    const v7, 0x15666

    const/4 v8, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x1

    move/from16 v0, p4

    move/from16 v1, v17

    if-ne v0, v1, :cond_8

    const/4 v8, 0x1

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/usb/StorageNotification;->checkIfToastShouldBeShown(I)Z

    move-result v17

    if-eqz v17, :cond_8

    const v7, 0x15667

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

    :cond_8
    if-eqz v15, :cond_b

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

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v7, v8, v1, v15}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

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

    :catchall_0
    move-exception v17

    monitor-exit p0

    throw v17

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

    goto :goto_2
.end method

.method private startAsync()V
    .locals 6

    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v5, "storage"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageManager;

    iput-object v4, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v4, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v4}, Landroid/os/storage/StorageManager;->isUsbMassStorageConnected()Z

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    const v4, 0x3000000a

    const-string v5, "StorageNotification_SWake"

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/usb/StorageNotification;->mWakelockScreen:Landroid/os/PowerManager$WakeLock;

    iget-object v4, p0, Lcom/android/systemui/usb/StorageNotification;->mWakelockScreen:Landroid/os/PowerManager$WakeLock;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "SystemUI StorageNotification"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    new-instance v4, Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/android/systemui/usb/StorageNotification;->mAsyncEventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/usb/StorageNotification$StorageNotificationEventListener;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Lcom/android/systemui/usb/StorageNotification$StorageNotificationEventListener;-><init>(Lcom/android/systemui/usb/StorageNotification;Lcom/android/systemui/usb/StorageNotification$1;)V

    invoke-virtual {v1, v0}, Lcom/android/systemui/usb/StorageNotification$StorageNotificationEventListener;->onUsbMassStorageConnectionChanged(Z)V

    iget-object v4, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v4, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    return-void
.end method


# virtual methods
.method public start()V
    .locals 3

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SystemUI StorageNotification Startup"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mStartupHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mStartupHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/usb/StorageNotification$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/usb/StorageNotification$2;-><init>(Lcom/android/systemui/usb/StorageNotification;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method updateUsbMassStorageNotification(Z)V
    .locals 0

    return-void
.end method
