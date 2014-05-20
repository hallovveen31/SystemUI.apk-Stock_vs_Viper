.class public Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;
.super Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
.source "QuickSettingUserCard.java"


# static fields
.field private static final PROJECTION_CONTACT:[Ljava/lang/String;

.field public static shareUserLock:Ljava/lang/Object;

.field public static shareUserName:Ljava/lang/String;

.field public static shareUserPhoto:Landroid/graphics/Bitmap;


# instance fields
.field private final RELOAD_DURATION:I

.field final contactReceiver:Landroid/content/BroadcastReceiver;

.field private defaultContent:Z

.field private handler:Landroid/os/Handler;

.field private imageview:Landroid/widget/ImageView;

.field private receiverRegister:Z

.field private final taskRunnable:Ljava/lang/Runnable;

.field private textview:Landroid/widget/TextView;

.field private updateUserLock:Ljava/lang/Object;

.field private userInfoTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "photo_file_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "display_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->PROJECTION_CONTACT:[Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->shareUserLock:Ljava/lang/Object;

    sput-object v3, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->shareUserName:Ljava/lang/String;

    sput-object v3, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->shareUserPhoto:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->textview:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->imageview:Landroid/widget/ImageView;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->handler:Landroid/os/Handler;

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->receiverRegister:Z

    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->userInfoTask:Landroid/os/AsyncTask;

    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard$2;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->taskRunnable:Ljava/lang/Runnable;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->updateUserLock:Ljava/lang/Object;

    const/16 v0, 0x258

    iput v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->RELOAD_DURATION:I

    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard$4;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->contactReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->defaultContent:Z

    const-string v0, "user_card"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->tileLabel:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->tileRemoveable:Z

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->updateUserLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->defaultContent:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->reloadUserInfo(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;)Landroid/os/AsyncTask;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->userInfoTask:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->userInfoTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->queryForUserInformation()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->PROJECTION_CONTACT:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;JJ)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->getContactsPhoto(JJ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->imageview:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->textview:Landroid/widget/TextView;

    return-object v0
.end method

.method private getContactsPhoto(JJ)Landroid/graphics/Bitmap;
    .locals 18

    const-wide/16 v15, 0x0

    cmp-long v15, p1, v15

    if-nez v15, :cond_0

    const-wide/16 v15, 0x0

    cmp-long v15, p3, v15

    if-nez v15, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    const-wide/16 v15, 0x0

    cmp-long v15, p3, v15

    if-lez v15, :cond_1

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->getDisplayPhoto(J)Landroid/graphics/Bitmap;

    move-result-object v3

    :cond_1
    if-nez v3, :cond_2

    const-wide/16 v15, 0x0

    cmp-long v15, p1, v15

    if-lez v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const/16 v16, 0x0

    move-wide/from16 v0, p1

    move-object/from16 v2, v16

    invoke-static {v15, v0, v1, v2}, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->loadThumbnail(Landroid/content/ContentResolver;JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    :cond_2
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v10, v5

    move v9, v4

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0c0054

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    if-le v5, v13, :cond_4

    if-le v4, v13, :cond_4

    int-to-float v15, v13

    int-to-float v0, v5

    move/from16 v16, v0

    div-float v14, v15, v16

    int-to-float v15, v13

    int-to-float v0, v4

    move/from16 v16, v0

    div-float v8, v15, v16

    cmpl-float v15, v14, v8

    if-lez v15, :cond_5

    move v11, v14

    :goto_1
    int-to-float v15, v5

    mul-float/2addr v15, v11

    float-to-double v15, v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v15

    double-to-int v10, v15

    int-to-float v15, v4

    mul-float/2addr v15, v11

    float-to-double v15, v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v15

    double-to-int v9, v15

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v6

    if-eqz v6, :cond_3

    mul-int v15, v10, v9

    int-to-float v15, v15

    const/high16 v16, 0x4080

    mul-float v15, v15, v16

    const/high16 v16, 0x4480

    div-float v15, v15, v16

    const/high16 v16, 0x4480

    div-float v15, v15, v16

    float-to-double v15, v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v15

    double-to-int v7, v15

    int-to-long v15, v7

    move-wide v0, v15

    invoke-virtual {v6, v0, v1}, Ldalvik/system/VMRuntime;->disableGcInRange(J)V

    :cond_3
    const/4 v15, 0x1

    invoke-static {v3, v10, v9, v15}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    move-object v3, v12

    if-eqz v6, :cond_4

    const/4 v15, 0x0

    invoke-virtual {v6, v15}, Ldalvik/system/VMRuntime;->restoreGc(Z)Z

    :cond_4
    const-string v15, "QuickSettingUserCard"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "getContactsPhoto("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ") sclae("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    move v11, v8

    goto/16 :goto_1

    :cond_6
    const-string v15, "QuickSettingUserCard"

    const-string v16, "getContactPhoto:null"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private getDisplayPhoto(J)Landroid/graphics/Bitmap;
    .locals 6

    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-gtz v3, :cond_0

    const-string v3, "QuickSettingUserCard"

    const-string v4, "!!!!!invalid photo file ID to decode stream"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$DisplayPhoto;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "r"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const-string v3, "QuickSettingUserCard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!!!!!open file descriptior fail:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v3, "QuickSettingUserCard"

    const-string v4, "!!!!!IO exception on decode bitmap from resource steam"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getQSIconID()I
    .locals 1

    const v0, 0x20800b9

    return v0
.end method

.method public static getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0a00c2

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private queryForUserInformation()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard$3;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->userInfoTask:Landroid/os/AsyncTask;

    return-void
.end method

.method private reloadUserInfo(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->taskRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->taskRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private setContentView(Landroid/widget/TextView;Landroid/widget/ImageView;)Z
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v3, v4

    :goto_0
    return v3

    :cond_1
    iput-object p2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->imageview:Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->textview:Landroid/widget/TextView;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->receiverRegister:Z

    if-nez v5, :cond_2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v5, "android.provider.Contacts.PROFILE_CHANGED"

    invoke-direct {v0, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->contactReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->receiverRegister:Z

    :cond_2
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->reloadUserInfo(I)V

    const-string v4, "QuickSettingUserCard"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setContentView:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v1

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    const/16 v2, 0xff

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->draw_color:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x33

    invoke-virtual {p1, v0, v2, v2, v2}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->onAttachedToWindow()V

    const v1, 0x7f070029

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f070027

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->setContentView(Landroid/widget/TextView;Landroid/widget/ImageView;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v1, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard$1;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->onLocaleChanged()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->removeSelfIfNeed(Landroid/os/Handler;)V

    const-string v1, "QuickSettingUserCard"

    const-string v2, "!!!!!initialize set content fail"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->receiverRegister:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->receiverRegister:Z

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->contactReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onLocaleChanged()V
    .locals 4

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->textview:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->defaultContent:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->textview:Landroid/widget/TextView;

    const v2, 0x7f0a00ad

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->textview:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/util/res/HtcResUtil;->isInAllCapsLocale(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAllCaps(Z)V

    :cond_0
    const-string v1, "QuickSettingUserCard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLocaleChanged:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->defaultContent:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
