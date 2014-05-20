.class public Lcom/android/systemui/statusbar/phone/ContactWidget;
.super Ljava/lang/Object;
.source "ContactWidget.java"


# static fields
.field public static final DEGUB_FLAG:Z = true

.field private static final KEY_CONTACT:Ljava/lang/String; = "tweaks_contact_"

.field private static final KEY_CONTACT_ADD_ICON:Ljava/lang/String; = "tweaks_contact_widget_add_icon"

.field private static final KEY_CONTACT_COUNT:Ljava/lang/String; = "tweaks_contact_widget_count"

.field private static final KEY_CONTACT_LONGCLICK:Ljava/lang/String; = "tweaks_contact_widget_longClick"

.field private static final KEY_CONTACT_ROUND_CORNERS:Ljava/lang/String; = "tweaks_contact_widget_round_corners"

.field private static final KEY_CONTACT_SIZE:Ljava/lang/String; = "tweaks_contact_widget_size"

.field private static final KEY_CONTACT_VIBRATOR:Ljava/lang/String; = "tweaks_contact_widget_vibrator"

.field private static final KEY_CONTACT_VIBRATOR_DURATION:Ljava/lang/String; = "tweaks_contact_widget_vibrator_duration"


# instance fields
.field addActionImg:Z

.field contactSize:I

.field contentResolver:Landroid/content/ContentResolver;

.field data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field mPhoneStatusBarView:Landroid/view/View;

.field scrollContainer:Landroid/widget/LinearLayout;

.field scrollView:Landroid/widget/HorizontalScrollView;

.field statusbar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field useLongClick:Z

.field useRoundCorners:Z

.field useVibrator:Z

.field vibrator:Landroid/os/Vibrator;

.field vibratorTimeInMs:J


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ContactWidget;->contactSize:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ContactWidget;->useLongClick:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ContactWidget;->useVibrator:Z

    const-wide/16 v0, 0x32

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/ContactWidget;->vibratorTimeInMs:J

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ContactWidget;->addActionImg:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ContactWidget;->useRoundCorners:Z

    return-void
.end method

.method private getBitmapWithOverlay(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v6, 0x0

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v2, p1, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v2, v0, v3, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    return-object v1

    :pswitch_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ContactWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "whatsapp"

    const-string v5, "drawable"

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/statusbar/phone/ContactWidget;->getResID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ContactWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "sms"

    const-string v5, "drawable"

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/statusbar/phone/ContactWidget;->getResID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ContactWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "phone_work"

    const-string v5, "drawable"

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/statusbar/phone/ContactWidget;->getResID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ContactWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "phone_private"

    const-string v5, "drawable"

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/statusbar/phone/ContactWidget;->getResID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ContactWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "phone_mobile"

    const-string v5, "drawable"

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/statusbar/phone/ContactWidget;->getResID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getBmpWithRoundedCorners(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11

    const/high16 v10, 0x41a0

    const/4 v9, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v2, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-direct {v3, v7}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v4, Landroid/graphics/RectF;

    int-to-float v7, v6

    int-to-float v8, v2

    invoke-direct {v4, v9, v9, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v5, Landroid/graphics/BitmapShader;

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v5, p1, v7, v8}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    const/high16 v7, -0x100

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {v1, v4, v10, v10, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-object v0
.end method

.method private getContactImage(Ljava/lang/Long;)Landroid/graphics/Bitmap;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/ContactWidget;->openPhoto(J)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getSmallPhoto(Landroid/content/Context;J)Landroid/graphics/Bitmap;
    .locals 11

    const/16 v10, 0xc8

    const/4 v9, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.contacts/contacts/widget_list"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "data15"

    aput-object v3, v2, v9

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "_id="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "data15"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    if-nez v6, :cond_2

    const-string v0, "hansbert"

    const-string v1, "abyte == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    :cond_0
    move-object v4, v8

    :cond_1
    :goto_0
    return-object v4

    :cond_2
    const-string v0, "hansbert"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "abyte size = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v0, v6

    if-lez v0, :cond_1

    array-length v0, v6

    invoke-static {v6, v9, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0, v10, v10, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    const-string v0, "hansbert"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bitmap height: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "hansbert"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bitmap width: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->prepareToDraw()V

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v4, v8

    goto :goto_0

    :cond_3
    const-string v0, "hansbert"

    const-string v1, "nix move to next.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initSettings()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ContactWidget;->loadData()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ContactWidget;->contentResolver:Landroid/content/ContentResolver;

    const-string v1, "tweaks_contact_widget_size"

    const/16 v2, 0xc8

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ContactWidget;->contactSize:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ContactWidget;->contentResolver:Landroid/content/ContentResolver;

    const-string v1, "tweaks_contact_widget_vibrator_duration"

    const-wide/16 v2, 0x32

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/ContactWidget;->vibratorTimeInMs:J

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ContactWidget;->contentResolver:Landroid/content/ContentResolver;

    const-string v1, "tweaks_contact_widget_longClick"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/ContactWidget;->useLongClick:Z

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ContactWidget;->contentResolver:Landroid/content/ContentResolver;

    const-string v1, "tweaks_contact_widget_vibrator"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_1

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/ContactWidget;->useVibrator:Z

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ContactWidget;->contentResolver:Landroid/content/ContentResolver;

    const-string v1, "tweaks_contact_widget_add_icon"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_2

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/ContactWidget;->addActionImg:Z

    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ContactWidget;->contentResolver:Landroid/content/ContentResolver;

    const-string v1, "tweaks_contact_widget_round_corners"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_3

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/ContactWidget;->useRoundCorners:Z

    :goto_3
    return-void

    :cond_0
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/ContactWidget;->useLongClick:Z

    goto :goto_0

    :cond_1
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/ContactWidget;->useVibrator:Z

    goto :goto_1

    :cond_2
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/ContactWidget;->addActionImg:Z

    goto :goto_2

    :cond_3
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/ContactWidget;->useRoundCorners:Z

    goto :goto_3
.end method

.method private initVibrator()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ContactWidget;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ContactWidget;->vibrator:Landroid/os/Vibrator;

    return-void
.end method

.method private initWidgets()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ContactWidget;->mPhoneStatusBarView:Landroid/view/View;

    const-string v1, "ll_imageContainer"

    const-string v2, "id"

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/ContactWidget;->getResID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ContactWidget;->scrollContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ContactWidget;->mPhoneStatusBarView:Landroid/view/View;

    const-string v1, "hsv_scroll"

    const-string v2, "id"

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/ContactWidget;->getResID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ContactWidget;->scrollView:Landroid/widget/HorizontalScrollView;

    return-void
.end method

.method private loadData()V
    .locals 10

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/ContactWidget;->contentResolver:Landroid/content/ContentResolver;

    const-string v8, "tweaks_contact_widget_count"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_2

    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/systemui/statusbar/phone/ContactWidget;->data:Ljava/util/ArrayList;

    const-string v7, "hansbert"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "tempList size = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eqz v7, :cond_1

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v2, v7, :cond_3

    :cond_1
    return-void

    :cond_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/ContactWidget;->contentResolver:Landroid/content/ContentResolver;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "tweaks_contact_"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v0, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v8, "hansbert"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v7, "contact from settings = "

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_5

    const-string v7, "hansbert"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Contact length = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "\\|"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x0

    :goto_2
    array-length v7, v6

    if-lt v3, v7, :cond_4

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/ContactWidget;->data:Ljava/util/ArrayList;

    invoke-virtual {v7, v2, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    const-string v7, "hansbert"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Contact Data at "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v6, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    const-string v7, "hansbert"

    const-string v8, "contact == null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private setOnClickListener(Landroid/widget/ImageView;I)V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/ContactWidget$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/statusbar/phone/ContactWidget$1;-><init>(Lcom/android/systemui/statusbar/phone/ContactWidget;I)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setOnLongClickListener(Landroid/widget/ImageView;I)V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/phone/ContactWidget$2;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/statusbar/phone/ContactWidget$2;-><init>(Lcom/android/systemui/statusbar/phone/ContactWidget;I)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private setOnLongClickListenerOpenContact(Landroid/widget/ImageView;I)V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/phone/ContactWidget$3;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/statusbar/phone/ContactWidget$3;-><init>(Lcom/android/systemui/statusbar/phone/ContactWidget;I)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private updateScrollView()V
    .locals 13

    const/16 v12, 0x14

    const/4 v11, 0x4

    const/4 v10, 0x0

    const/16 v9, 0xc8

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/ContactWidget;->scrollContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v1, 0x0

    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/ContactWidget;->data:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v1, v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/ContactWidget;->scrollContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->invalidate()V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/ContactWidget;->scrollContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->requestLayout()V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/ContactWidget;->scrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v5}, Landroid/widget/HorizontalScrollView;->invalidate()V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/ContactWidget;->scrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v5}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/ContactWidget;->data:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    aget-object v5, v5, v11

    const-string v6, "nA"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    new-instance v3, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/ContactWidget;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/ContactWidget;->contactSize:I

    iget v6, p0, Lcom/android/systemui/statusbar/phone/ContactWidget;->contactSize:I

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v12, v12, v10, v12}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/ContactWidget;->data:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    aget-object v5, v5, v11

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/ContactWidget;->getContactImage(Ljava/lang/Long;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/ContactWidget;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/ContactWidget;->data:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    aget-object v5, v5, v11

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-direct {p0, v6, v7, v8}, Lcom/android/systemui/statusbar/phone/ContactWidget;->getSmallPhoto(Landroid/content/Context;J)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_1
    if-nez v2, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/ContactWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "dummy"

    const-string v7, "drawable"

    invoke-virtual {p0, v6, v7}, Lcom/android/systemui/statusbar/phone/ContactWidget;->getResID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v5, v9, v9, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_1
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/ContactWidget;->addActionImg:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/ContactWidget;->data:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    const/4 v6, 0x6

    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {p0, v2, v5}, Lcom/android/systemui/statusbar/phone/ContactWidget;->getBitmapWithOverlay(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_2
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/ContactWidget;->useRoundCorners:Z

    if-eqz v5, :cond_3

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/ContactWidget;->getBmpWithRoundedCorners(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_3
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/ContactWidget;->useLongClick:Z

    if-eqz v5, :cond_6

    invoke-direct {p0, v3, v1}, Lcom/android/systemui/statusbar/phone/ContactWidget;->setOnLongClickListener(Landroid/widget/ImageView;I)V

    :goto_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/ContactWidget;->scrollContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    invoke-static {v0, v9, v9, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_1

    :cond_6
    invoke-direct {p0, v3, v1}, Lcom/android/systemui/statusbar/phone/ContactWidget;->setOnClickListener(Landroid/widget/ImageView;I)V

    invoke-direct {p0, v3, v1}, Lcom/android/systemui/statusbar/phone/ContactWidget;->setOnLongClickListenerOpenContact(Landroid/widget/ImageView;I)V

    goto :goto_2
.end method


# virtual methods
.method public getResID(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ContactWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "com.android.systemui"

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getWidgetHeight()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ContactWidget;->scrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v0

    return v0
.end method

.method public getWidgetView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ContactWidget;->scrollView:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method public init(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ContactWidget;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ContactWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ContactWidget;->contentResolver:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ContactWidget;->mPhoneStatusBarView:Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/ContactWidget;->statusbar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ContactWidget;->initSettings()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ContactWidget;->initWidgets()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ContactWidget;->initVibrator()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ContactWidget;->updateScrollView()V

    return-void
.end method

.method protected isNotNA(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "nA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public makeCall(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tel:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ContactWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public makeToast(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ContactWidget;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public openPhoto(J)Ljava/io/InputStream;
    .locals 8

    const/4 v5, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ContactWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "photo"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "data15"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_0

    :goto_0
    return-object v3

    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    if-eqz v6, :cond_1

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public openWhatsApp(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "content://com.android.contacts/data/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ContactWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.whatsapp"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ContactWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public refreshWidget()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ContactWidget;->initSettings()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ContactWidget;->updateScrollView()V

    return-void
.end method

.method public startSms(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "vnd.android-dir/mms-sms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sms:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ContactWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected updateImageListener(Z)V
    .locals 5

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ContactWidget;->scrollContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ContactWidget;->scrollContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/statusbar/phone/ContactWidget;->setOnClickListener(Landroid/widget/ImageView;I)V

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/statusbar/phone/ContactWidget;->setOnLongClickListenerOpenContact(Landroid/widget/ImageView;I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/statusbar/phone/ContactWidget;->setOnLongClickListener(Landroid/widget/ImageView;I)V

    goto :goto_1
.end method
