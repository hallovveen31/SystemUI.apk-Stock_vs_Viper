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

    .prologue
    const/4 v3, 0x0

    .line 345
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

    .line 497
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->shareUserLock:Ljava/lang/Object;

    .line 499
    sput-object v3, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->shareUserName:Ljava/lang/String;

    .line 500
    sput-object v3, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->shareUserPhoto:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrset"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->textview:Landroid/widget/TextView;

    .line 63
    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->imageview:Landroid/widget/ImageView;

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->handler:Landroid/os/Handler;

    .line 161
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->receiverRegister:Z

    .line 165
    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->userInfoTask:Landroid/os/AsyncTask;

    .line 176
    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard$2;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->taskRunnable:Ljava/lang/Runnable;

    .line 195
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->updateUserLock:Ljava/lang/Object;

    .line 352
    const/16 v0, 0x258

    iput v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->RELOAD_DURATION:I

    .line 354
    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard$4;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->contactReceiver:Landroid/content/BroadcastReceiver;

    .line 482
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->defaultContent:Z

    .line 58
    const-string v0, "user_card"

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->tileLabel:Ljava/lang/String;

    .line 59
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->tileRemoveable:Z

    .line 60
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->updateUserLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->defaultContent:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->reloadUserInfo(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;)Landroid/os/AsyncTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->userInfoTask:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->userInfoTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->queryForUserInformation()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->PROJECTION_CONTACT:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;JJ)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->getContactsPhoto(JJ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->imageview:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->textview:Landroid/widget/TextView;

    return-object v0
.end method

.method private getContactsPhoto(JJ)Landroid/graphics/Bitmap;
    .locals 18
    .parameter "photoID"
    .parameter "photoFileID"

    .prologue
    .line 369
    const-wide/16 v15, 0x0

    cmp-long v15, p1, v15

    if-nez v15, :cond_0

    const-wide/16 v15, 0x0

    cmp-long v15, p3, v15

    if-nez v15, :cond_0

    .line 370
    const/4 v3, 0x0

    .line 426
    :goto_0
    return-object v3

    .line 372
    :cond_0
    const/4 v3, 0x0

    .line 375
    .local v3, bitmap:Landroid/graphics/Bitmap;
    const-wide/16 v15, 0x0

    cmp-long v15, p3, v15

    if-lez v15, :cond_1

    .line 376
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->getDisplayPhoto(J)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 379
    :cond_1
    if-nez v3, :cond_2

    const-wide/16 v15, 0x0

    cmp-long v15, p1, v15

    if-lez v15, :cond_2

    .line 380
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const/16 v16, 0x0

    move-wide/from16 v0, p1

    move-object/from16 v2, v16

    invoke-static {v15, v0, v1, v2}, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->loadThumbnail(Landroid/content/ContentResolver;JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 382
    :cond_2
    if-eqz v3, :cond_6

    .line 384
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 385
    .local v5, bitmapW:I
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 387
    .local v4, bitmapH:I
    move v10, v5

    .line 388
    .local v10, newBitmapW:I
    move v9, v4

    .line 390
    .local v9, newBitmapH:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0c0054

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 394
    .local v13, threshold:I
    if-le v5, v13, :cond_4

    if-le v4, v13, :cond_4

    .line 396
    int-to-float v15, v13

    int-to-float v0, v5

    move/from16 v16, v0

    div-float v14, v15, v16

    .line 397
    .local v14, wRatio:F
    int-to-float v15, v13

    int-to-float v0, v4

    move/from16 v16, v0

    div-float v8, v15, v16

    .line 398
    .local v8, hRatio:F
    cmpl-float v15, v14, v8

    if-lez v15, :cond_5

    move v11, v14

    .line 400
    .local v11, sRatio:F
    :goto_1
    int-to-float v15, v5

    mul-float/2addr v15, v11

    float-to-double v15, v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v15

    double-to-int v10, v15

    .line 401
    int-to-float v15, v4

    mul-float/2addr v15, v11

    float-to-double v15, v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v15

    double-to-int v9, v15

    .line 403
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v6

    .line 406
    .local v6, dvm:Ldalvik/system/VMRuntime;
    if-eqz v6, :cond_3

    .line 408
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

    .line 409
    .local v7, gcsize:I
    int-to-long v15, v7

    move-wide v0, v15

    invoke-virtual {v6, v0, v1}, Ldalvik/system/VMRuntime;->disableGcInRange(J)V

    .line 412
    .end local v7           #gcsize:I
    :cond_3
    const/4 v15, 0x1

    invoke-static {v3, v10, v9, v15}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 414
    .local v12, scaleBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 415
    move-object v3, v12

    .line 417
    if-eqz v6, :cond_4

    .line 418
    const/4 v15, 0x0

    invoke-virtual {v6, v15}, Ldalvik/system/VMRuntime;->restoreGc(Z)Z

    .line 421
    .end local v6           #dvm:Ldalvik/system/VMRuntime;
    .end local v8           #hRatio:F
    .end local v11           #sRatio:F
    .end local v12           #scaleBitmap:Landroid/graphics/Bitmap;
    .end local v14           #wRatio:F
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

    .restart local v8       #hRatio:F
    .restart local v14       #wRatio:F
    :cond_5
    move v11, v8

    .line 398
    goto/16 :goto_1

    .line 424
    .end local v4           #bitmapH:I
    .end local v5           #bitmapW:I
    .end local v8           #hRatio:F
    .end local v9           #newBitmapH:I
    .end local v10           #newBitmapW:I
    .end local v13           #threshold:I
    .end local v14           #wRatio:F
    :cond_6
    const-string v15, "QuickSettingUserCard"

    const-string v16, "getContactPhoto:null"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private getDisplayPhoto(J)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "photoFileID"

    .prologue
    .line 432
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-gtz v3, :cond_0

    .line 434
    const-string v3, "QuickSettingUserCard"

    const-string v4, "!!!!!invalid photo file ID to decode stream"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const/4 v0, 0x0

    .line 463
    :goto_0
    return-object v0

    .line 438
    :cond_0
    const/4 v0, 0x0

    .line 439
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 445
    .local v2, fileDescriptor:Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$DisplayPhoto;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "r"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    .line 448
    if-eqz v2, :cond_1

    .line 450
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 451
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 452
    const/4 v2, 0x0

    goto :goto_0

    .line 455
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

    .line 457
    :catch_0
    move-exception v1

    .line 459
    .local v1, exception:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 460
    const-string v3, "QuickSettingUserCard"

    const-string v4, "!!!!!IO exception on decode bitmap from resource steam"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getQSIconID()I
    .locals 1

    .prologue
    .line 492
    const v0, 0x20800b9

    return v0
.end method

.method public static getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1
    .parameter "resource"

    .prologue
    .line 486
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

    .prologue
    .line 200
    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard$3;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->userInfoTask:Landroid/os/AsyncTask;

    .line 342
    return-void
.end method

.method private reloadUserInfo(I)V
    .locals 4
    .parameter "delay"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 174
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->taskRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 173
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->taskRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private setContentView(Landroid/widget/TextView;Landroid/widget/ImageView;)Z
    .locals 8
    .parameter "_textview"
    .parameter "_imageview"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 138
    .local v1, startTime:J
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v3, v4

    .line 157
    :goto_0
    return v3

    .line 141
    :cond_1
    iput-object p2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->imageview:Landroid/widget/ImageView;

    .line 142
    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->textview:Landroid/widget/TextView;

    .line 144
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->receiverRegister:Z

    if-nez v5, :cond_2

    .line 146
    new-instance v0, Landroid/content/IntentFilter;

    const-string v5, "android.provider.Contacts.PROFILE_CHANGED"

    invoke-direct {v0, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 148
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->contactReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 149
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->receiverRegister:Z

    .line 153
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->reloadUserInfo(I)V

    .line 155
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
    .parameter "canvas"

    .prologue
    const/16 v2, 0xff

    .line 507
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 511
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->draw_color:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 512
    const/16 v0, 0x33

    invoke-virtual {p1, v0, v2, v2, v2}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 513
    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    .prologue
    .line 70
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->onAttachedToWindow()V

    .line 72
    const v1, 0x7f070029

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f070027

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->setContentView(Landroid/widget/TextView;Landroid/widget/ImageView;)Z

    move-result v0

    .line 76
    .local v0, success:Z
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 79
    new-instance v1, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard$1;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->onLocaleChanged()V

    .line 118
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->removeSelfIfNeed(Landroid/os/Handler;)V

    .line 116
    const-string v1, "QuickSettingUserCard"

    const-string v2, "!!!!!initialize set content fail"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 123
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->onDetachedFromWindow()V

    .line 125
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->receiverRegister:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->receiverRegister:Z

    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->contactReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 131
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    return-void
.end method

.method public onLocaleChanged()V
    .locals 4

    .prologue
    .line 469
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 472
    .local v0, resource:Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->textview:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->defaultContent:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 474
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->textview:Landroid/widget/TextView;

    const v2, 0x7f0a00ad

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 475
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->textview:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/util/res/HtcResUtil;->isInAllCapsLocale(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 478
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

    .line 479
    return-void
.end method
