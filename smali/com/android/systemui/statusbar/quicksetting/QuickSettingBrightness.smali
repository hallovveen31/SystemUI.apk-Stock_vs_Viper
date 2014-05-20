.class public Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;
.super Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
.source "QuickSettingBrightness.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness$BrightnessObserver;
    }
.end annotation


# static fields
.field private static final BRIGHTNESS_LEVEL:[I

.field private static final BRIGHTNESS_VALUE:[I


# instance fields
.field private final BOOTTEST:Z

.field private IMAGE_RESOURCE:[I

.field private final IMAGE_RESOURCE_L:[I

.field private final IMAGE_RESOURCE_XL:[I

.field private final TAG:Ljava/lang/String;

.field private brightnessMode:I

.field private brightnessObserver:Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness$BrightnessObserver;

.field private demoObserver:Landroid/database/ContentObserver;

.field private handler:Landroid/os/Handler;

.field private imageview:Landroid/widget/ImageView;

.field private indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

.field private maximumBacklight:I

.field private minimumBacklight:I

.field private observerRegister:Z

.field private powermanager:Landroid/os/IPowerManager;

.field private textview:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 414
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->BRIGHTNESS_VALUE:[I

    .line 415
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->BRIGHTNESS_LEVEL:[I

    return-void

    .line 414
    :array_0
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0x99t 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data

    .line 415
    :array_1
    .array-data 0x4
        0x33t 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0x99t 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrset"

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const-string v0, "QuickSettingBrightness"

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->TAG:Ljava/lang/String;

    .line 43
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->BOOTTEST:Z

    .line 49
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->minimumBacklight:I

    .line 50
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->maximumBacklight:I

    .line 52
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->IMAGE_RESOURCE_L:[I

    .line 61
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->IMAGE_RESOURCE_XL:[I

    .line 71
    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->IMAGE_RESOURCE:[I

    .line 73
    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->textview:Landroid/widget/TextView;

    .line 74
    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->imageview:Landroid/widget/ImageView;

    .line 76
    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    .line 189
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->handler:Landroid/os/Handler;

    .line 226
    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->powermanager:Landroid/os/IPowerManager;

    .line 267
    iput v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->brightnessMode:I

    .line 298
    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->brightnessObserver:Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness$BrightnessObserver;

    .line 354
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->observerRegister:Z

    .line 489
    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness$4;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->handler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness$4;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->demoObserver:Landroid/database/ContentObserver;

    .line 81
    const-string v0, "brightness"

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->tileLabel:Ljava/lang/String;

    .line 82
    return-void

    .line 52
    nop

    :array_0
    .array-data 0x4
        0x48t 0x1t 0x2t 0x7ft
        0x46t 0x1t 0x2t 0x7ft
        0x47t 0x1t 0x2t 0x7ft
        0x48t 0x1t 0x2t 0x7ft
        0x44t 0x1t 0x2t 0x7ft
    .end array-data

    .line 61
    :array_1
    .array-data 0x4
        0x4bt 0x1t 0x2t 0x7ft
        0x49t 0x1t 0x2t 0x7ft
        0x4at 0x1t 0x2t 0x7ft
        0x4bt 0x1t 0x2t 0x7ft
        0x45t 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->nextProfileState()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->Log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->updateBrightnessContent()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->observerRegister:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->observerRegister:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;)Landroid/database/ContentObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->demoObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->performNextProfileState()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->updateDemoFLOstate()V

    return-void
.end method

.method private getBrightnessLevel(I)I
    .locals 3
    .parameter "bnvalue"

    .prologue
    const/4 v0, 0x0

    .line 419
    sget-object v1, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->BRIGHTNESS_LEVEL:[I

    aget v1, v1, v0

    if-gt p1, v1, :cond_1

    .line 426
    :cond_0
    :goto_0
    return v0

    .line 422
    :cond_1
    const/4 v0, 0x1

    .local v0, loop:I
    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_3

    .line 423
    sget-object v1, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->BRIGHTNESS_LEVEL:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    if-le p1, v1, :cond_2

    sget-object v1, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->BRIGHTNESS_LEVEL:[I

    aget v1, v1, v0

    if-le p1, v1, :cond_0

    .line 422
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 426
    :cond_3
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public static getQSIconID()I
    .locals 1

    .prologue
    .line 457
    const v0, 0x7f02014c

    return v0
.end method

.method public static getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1
    .parameter "resource"

    .prologue
    .line 451
    if-nez p0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0a00b3

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private nextProfileState()V
    .locals 2

    .prologue
    .line 361
    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness$3;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 370
    return-void
.end method

.method private performNextProfileState()V
    .locals 10

    .prologue
    .line 375
    iget v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->brightnessMode:I

    .line 376
    .local v1, currMode:I
    add-int/lit8 v6, v1, 0x1

    rem-int/lit8 v2, v6, 0x5

    .line 378
    .local v2, nextMode:I
    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 380
    .local v3, resolver:Landroid/content/ContentResolver;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 382
    .local v4, startTime:J
    const/4 v6, 0x4

    if-ne v2, v6, :cond_0

    .line 385
    const-string v6, "screen_brightness_mode"

    const/4 v7, 0x1

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 411
    :goto_0
    const-string v6, "QuickSettingBrightness"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "nextProfileState oldMode:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " newMode:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " elapse:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    return-void

    .line 390
    :cond_0
    sget-object v6, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->BRIGHTNESS_VALUE:[I

    aget v0, v6, v2

    .line 404
    .local v0, bnValue:I
    const-string v6, "screen_brightness_mode"

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 408
    const-string v6, "screen_brightness"

    invoke-static {v3, v6, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private setContentView(Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;)Z
    .locals 6
    .parameter "_textview"
    .parameter "_imageview"
    .parameter "_indicatorview"

    .prologue
    .line 193
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 195
    .local v0, startTime:J
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 196
    :cond_0
    const/4 v2, 0x0

    .line 223
    :goto_0
    return v2

    .line 198
    :cond_1
    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->textview:Landroid/widget/TextView;

    .line 199
    iput-object p2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->imageview:Landroid/widget/ImageView;

    .line 200
    iput-object p3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    .line 208
    new-instance v2, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness$BrightnessObserver;

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->handler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness$BrightnessObserver;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->brightnessObserver:Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness$BrightnessObserver;

    .line 209
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->brightnessObserver:Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness$BrightnessObserver;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness$BrightnessObserver;->startObserver()V

    .line 211
    const-string v2, "QuickSettingBrightness"

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

    .line 223
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private updateBrightnessContent()V
    .locals 7

    .prologue
    .line 230
    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 232
    .local v3, resolver:Landroid/content/ContentResolver;
    if-nez v3, :cond_0

    .line 265
    :goto_0
    return-void

    .line 235
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->minimumBacklight:I

    .line 240
    .local v1, bnValue:I
    :try_start_0
    const-string v4, "screen_brightness"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 248
    :goto_1
    const/4 v0, 0x0

    .line 253
    .local v0, bnMode:I
    :try_start_1
    const-string v4, "screen_brightness_mode"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 261
    :goto_2
    const-string v4, "QuickSettingBrightness"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateBrightnessContent bnValue:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bnMode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    if-eqz v0, :cond_1

    const/4 v4, 0x1

    :goto_3
    invoke-direct {p0, v1, v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->updateLevelContent(IZ)V

    goto :goto_0

    .line 242
    .end local v0           #bnMode:I
    :catch_0
    move-exception v2

    .line 244
    .local v2, exception:Ljava/lang/Exception;
    const-string v4, "QuickSettingBrightness"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!!!!!query brightness value fail:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->maximumBacklight:I

    goto :goto_1

    .line 255
    .end local v2           #exception:Ljava/lang/Exception;
    .restart local v0       #bnMode:I
    :catch_1
    move-exception v2

    .line 257
    .restart local v2       #exception:Ljava/lang/Exception;
    const-string v4, "QuickSettingBrightness"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!!!!!query brightness mode fail:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const/4 v0, 0x0

    goto :goto_2

    .line 264
    .end local v2           #exception:Ljava/lang/Exception;
    :cond_1
    const/4 v4, 0x0

    goto :goto_3
.end method

.method private updateDemoFLOstate()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 464
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "htc_is_demo"

    invoke-static {v2, v3, v1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 467
    .local v0, enable:Z
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->setEnabled(Z)V

    .line 469
    const-string v1, "QuickSettingBrightness"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDemoFLOstate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    return-void
.end method

.method private updateLevelContent(IZ)V
    .locals 9
    .parameter "bnValue"
    .parameter "autoMode"

    .prologue
    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v8, 0x1

    .line 271
    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->imageview:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    if-nez v3, :cond_1

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->getBrightnessLevel(I)I

    move-result v0

    .line 277
    .local v0, bnLevel:I
    if-ne p2, v8, :cond_2

    move v3, v4

    :goto_1
    iput v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->brightnessMode:I

    .line 280
    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->imageview:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->IMAGE_RESOURCE:[I

    iget v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->brightnessMode:I

    aget v6, v6, v7

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 281
    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->imageview:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->brightnessMode:I

    if-nez v3, :cond_3

    const v3, 0x3e99999a

    :goto_2
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 283
    iget v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->brightnessMode:I

    if-ne v3, v4, :cond_4

    move v1, v5

    .line 286
    .local v1, currentLevel:I
    :goto_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    invoke-virtual {v3, v1, v5}, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->setLevel(II)V

    .line 288
    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 291
    .local v2, resource:Landroid/content/res/Resources;
    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    if-ne p2, v8, :cond_5

    const v3, 0x7f0a00dd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_4
    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 295
    const-string v3, "QuickSettingBrightness"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateLevelContent bnValue:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bnLevel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " autoMode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " brightnessMode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->brightnessMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1           #currentLevel:I
    .end local v2           #resource:Landroid/content/res/Resources;
    :cond_2
    move v3, v0

    .line 277
    goto :goto_1

    .line 281
    :cond_3
    const/high16 v3, 0x3f80

    goto :goto_2

    .line 283
    :cond_4
    iget v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->brightnessMode:I

    goto :goto_3

    .line 291
    .restart local v1       #currentLevel:I
    .restart local v2       #resource:Landroid/content/res/Resources;
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0a00df

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 7

    .prologue
    const v6, 0x7f07002e

    const/4 v5, 0x1

    .line 87
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->onAttachedToWindow()V

    .line 90
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->getId()I

    move-result v2

    const v3, 0x7f07002b

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->IMAGE_RESOURCE_XL:[I

    :goto_0
    iput-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->IMAGE_RESOURCE:[I

    .line 92
    const v2, 0x7f070029

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f070027

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f070028

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->setContentView(Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;)Z

    move-result v1

    .line 97
    .local v1, success:Z
    if-ne v1, v5, :cond_3

    .line 100
    new-instance v2, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness$1;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->setLongClickable(Z)V

    .line 110
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->getOnLongClickListener()Landroid/view/View$OnLongClickListener;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 112
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 114
    .local v0, moreview:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 117
    new-instance v2, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness$2;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->onLocaleChanged()V

    .line 149
    if-eqz v0, :cond_1

    .line 152
    const v2, 0x7f07002d

    invoke-virtual {p0, v2, v6}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->setTouchDelegate(II)V

    .line 155
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->updateDemoFLOstate()V

    .line 164
    .end local v0           #moreview:Landroid/view/View;
    :goto_1
    return-void

    .line 90
    .end local v1           #success:Z
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->IMAGE_RESOURCE_L:[I

    goto :goto_0

    .line 160
    .restart local v1       #success:Z
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->removeSelfIfNeed(Landroid/os/Handler;)V

    .line 162
    const-string v2, "QuickSettingBrightness"

    const-string v3, "!!!!!initialize set content fail"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onDetachedFromWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 169
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->onDetachedFromWindow()V

    .line 171
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->setOnOverlayChangeListener(I)V

    .line 174
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->setLongClickable(Z)V

    .line 175
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 177
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 179
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->observerRegister:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 181
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->brightnessObserver:Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness$BrightnessObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 182
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->demoObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 184
    iput-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->brightnessObserver:Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness$BrightnessObserver;

    .line 185
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->observerRegister:Z

    .line 187
    :cond_0
    return-void
.end method

.method public onLocaleChanged()V
    .locals 4

    .prologue
    .line 434
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 436
    .local v1, resource:Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->textview:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 438
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->textview:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->textview:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/util/res/HtcResUtil;->isInAllCapsLocale(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 442
    :cond_0
    const v2, 0x7f07002e

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 444
    .local v0, moreview:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 445
    const v2, 0x7f0a00de

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 447
    :cond_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 475
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setEnabled(Z)V

    .line 477
    const v1, 0x7f07002e

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 479
    .local v0, moreview:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 481
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 482
    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 485
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const/high16 v1, 0x3f80

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->setAlpha(F)V

    .line 486
    return-void

    .line 485
    :cond_1
    const v1, 0x3e99999a

    goto :goto_0
.end method
