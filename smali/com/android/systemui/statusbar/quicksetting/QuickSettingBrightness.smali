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

    const/4 v1, 0x4

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->BRIGHTNESS_VALUE:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->BRIGHTNESS_LEVEL:[I

    return-void

    :array_0
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0x99t 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data

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

    const/4 v3, 0x5

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "QuickSettingBrightness"

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->TAG:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->BOOTTEST:Z

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->minimumBacklight:I

    const/16 v0, 0xff

    iput v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->maximumBacklight:I

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->IMAGE_RESOURCE_L:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->IMAGE_RESOURCE_XL:[I

    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->IMAGE_RESOURCE:[I

    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->textview:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->imageview:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->handler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->powermanager:Landroid/os/IPowerManager;

    iput v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->brightnessMode:I

    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->brightnessObserver:Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness$BrightnessObserver;

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->observerRegister:Z

    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness$4;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->handler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness$4;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->demoObserver:Landroid/database/ContentObserver;

    const-string v0, "brightness"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->tileLabel:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 0x4
        0x48t 0x1t 0x2t 0x7ft
        0x46t 0x1t 0x2t 0x7ft
        0x47t 0x1t 0x2t 0x7ft
        0x48t 0x1t 0x2t 0x7ft
        0x44t 0x1t 0x2t 0x7ft
    .end array-data

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

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->nextProfileState()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->Log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->updateBrightnessContent()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->observerRegister:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->observerRegister:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;)Landroid/database/ContentObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->demoObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->performNextProfileState()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->updateDemoFLOstate()V

    return-void
.end method

.method private getBrightnessLevel(I)I
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->BRIGHTNESS_LEVEL:[I

    aget v1, v1, v0

    if-gt p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_3

    sget-object v1, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->BRIGHTNESS_LEVEL:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    if-le p1, v1, :cond_2

    sget-object v1, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->BRIGHTNESS_LEVEL:[I

    aget v1, v1, v0

    if-le p1, v1, :cond_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public static getQSIconID()I
    .locals 1

    const v0, 0x7f02014c

    return v0
.end method

.method public static getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1

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

    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness$3;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private performNextProfileState()V
    .locals 10

    iget v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->brightnessMode:I

    add-int/lit8 v6, v1, 0x1

    rem-int/lit8 v2, v6, 0x5

    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x4

    if-ne v2, v6, :cond_0

    const-string v6, "screen_brightness_mode"

    const/4 v7, 0x1

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

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

    return-void

    :cond_0
    sget-object v6, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->BRIGHTNESS_VALUE:[I

    aget v0, v6, v2

    const-string v6, "screen_brightness_mode"

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v6, "screen_brightness"

    invoke-static {v3, v6, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private setContentView(Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;)Z
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->textview:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->imageview:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    new-instance v2, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness$BrightnessObserver;

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->handler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness$BrightnessObserver;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->brightnessObserver:Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness$BrightnessObserver;

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->brightnessObserver:Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness$BrightnessObserver;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness$BrightnessObserver;->startObserver()V

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

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private updateBrightnessContent()V
    .locals 7

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->minimumBacklight:I

    :try_start_0
    const-string v4, "screen_brightness"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    const/4 v0, 0x0

    :try_start_1
    const-string v4, "screen_brightness_mode"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

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

    if-eqz v0, :cond_1

    const/4 v4, 0x1

    :goto_3
    invoke-direct {p0, v1, v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->updateLevelContent(IZ)V

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v4, "QuickSettingBrightness"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!!!!!query brightness value fail:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->maximumBacklight:I

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v4, "QuickSettingBrightness"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!!!!!query brightness mode fail:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    goto :goto_3
.end method

.method private updateDemoFLOstate()V
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "htc_is_demo"

    invoke-static {v2, v3, v1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->setEnabled(Z)V

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

    return-void
.end method

.method private updateLevelContent(IZ)V
    .locals 9

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v8, 0x1

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->imageview:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->getBrightnessLevel(I)I

    move-result v0

    if-ne p2, v8, :cond_2

    move v3, v4

    :goto_1
    iput v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->brightnessMode:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->imageview:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->IMAGE_RESOURCE:[I

    iget v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->brightnessMode:I

    aget v6, v6, v7

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->imageview:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->brightnessMode:I

    if-nez v3, :cond_3

    const v3, 0x3e99999a

    :goto_2
    invoke-virtual {v6, v3}, Landroid/view/View;->setAlpha(F)V

    iget v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->brightnessMode:I

    if-ne v3, v4, :cond_4

    move v1, v5

    :goto_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    invoke-virtual {v3, v1, v5}, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->setLevel(II)V

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    if-ne p2, v8, :cond_5

    const v3, 0x7f0a00dd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_4
    invoke-virtual {v4, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

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

    :cond_2
    move v3, v0

    goto :goto_1

    :cond_3
    const/high16 v3, 0x3f80

    goto :goto_2

    :cond_4
    iget v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->brightnessMode:I

    goto :goto_3

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

    const v6, 0x7f07002e

    const/4 v5, 0x1

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f07002b

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->IMAGE_RESOURCE_XL:[I

    :goto_0
    iput-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->IMAGE_RESOURCE:[I

    const v2, 0x7f070029

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f070027

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f070028

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->setContentView(Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;)Z

    move-result v1

    if-ne v1, v5, :cond_3

    new-instance v2, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness$1;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v5}, Landroid/view/View;->setLongClickable(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->getOnLongClickListener()Landroid/view/View$OnLongClickListener;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness$2;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->onLocaleChanged()V

    if-eqz v0, :cond_1

    const v2, 0x7f07002d

    invoke-virtual {p0, v2, v6}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setTouchDelegate(II)V

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->updateDemoFLOstate()V

    :goto_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->IMAGE_RESOURCE_L:[I

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->removeSelfIfNeed(Landroid/os/Handler;)V

    const-string v2, "QuickSettingBrightness"

    const-string v3, "!!!!!initialize set content fail"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onDetachedFromWindow()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->onDetachedFromWindow()V

    invoke-virtual {p0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setOnOverlayChangeListener(I)V

    invoke-virtual {p0, v3}, Landroid/view/View;->setLongClickable(Z)V

    invoke-virtual {p0, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->observerRegister:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->brightnessObserver:Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness$BrightnessObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->demoObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->brightnessObserver:Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness$BrightnessObserver;

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->observerRegister:Z

    :cond_0
    return-void
.end method

.method public onLocaleChanged()V
    .locals 4

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->textview:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->textview:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->textview:Landroid/widget/TextView;

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

.method public setEnabled(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setEnabled(Z)V

    const v1, 0x7f07002e

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const/high16 v1, 0x3f80

    :goto_0
    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void

    :cond_1
    const v1, 0x3e99999a

    goto :goto_0
.end method
