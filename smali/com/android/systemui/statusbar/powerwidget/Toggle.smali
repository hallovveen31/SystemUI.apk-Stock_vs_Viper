.class public abstract Lcom/android/systemui/statusbar/powerwidget/Toggle;
.super Ljava/lang/Object;
.source "Toggle.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/powerwidget/Toggle$State;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$android$systemui$statusbar$powerwidget$Toggle$State:[I = null

.field public static final BUTTON_ADB:Ljava/lang/String; = "ADB"

.field public static final BUTTON_AIRPLANE:Ljava/lang/String; = "Airplane"

.field public static final BUTTON_AUTOROTATE:Ljava/lang/String; = "Rotation"

.field public static final BUTTON_BLUETOOTH:Ljava/lang/String; = "Bluetooth"

.field public static final BUTTON_BRIGHTNESS:Ljava/lang/String; = "Brightness"

.field public static final BUTTON_DND:Ljava/lang/String; = "DND"

.field public static final BUTTON_FLASHLIGHT:Ljava/lang/String; = "Flashlight"

.field public static final BUTTON_GPS:Ljava/lang/String; = "GPS"

.field public static final BUTTON_HUB:Ljava/lang/String; = "Hub"

.field public static final BUTTON_LTE:Ljava/lang/String; = "LTE"

.field public static final BUTTON_MOBILEDATA:Ljava/lang/String; = "MobileNetwork"

.field public static final BUTTON_NETWORKMODE:Ljava/lang/String; = "NetworkMode"

.field public static final BUTTON_NFC:Ljava/lang/String; = "NFC"

.field public static final BUTTON_POWERSAVER:Ljava/lang/String; = "PowerSaver"

.field public static final BUTTON_QUIETHOURS:Ljava/lang/String; = "QuietHours"

.field public static final BUTTON_REBOOT:Ljava/lang/String; = "Reboot"

.field public static final BUTTON_SCREENON:Ljava/lang/String; = "ScreenOn"

.field public static final BUTTON_SILENT:Ljava/lang/String; = "SilentMode"

.field public static final BUTTON_SOUND:Ljava/lang/String; = "Volume"

.field public static final BUTTON_SOUNDENHANCER:Ljava/lang/String; = "SoundEnhancerButton"

.field public static final BUTTON_SYNC:Ljava/lang/String; = "AutoSync"

.field public static final BUTTON_SYNCALL:Ljava/lang/String; = "SyncAll"

.field public static final BUTTON_TASK:Ljava/lang/String; = "TaskManager"

.field public static final BUTTON_TWEAKS:Ljava/lang/String; = "Tweaks"

.field public static final BUTTON_USER:Ljava/lang/String; = "User"

.field public static final BUTTON_VIBR:Ljava/lang/String; = "VibrationMode"

.field public static final BUTTON_WIFI:Ljava/lang/String; = "Wifi"

.field public static final BUTTON_WIFIAP:Ljava/lang/String; = "HotSpot"

.field public static final BUTTON_XLOUD:Ljava/lang/String; = "XLoud"

.field private static INDICATOR_OFF_COLOR:I = 0x0

.field private static INDICATOR_ON_COLOR:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Venom - Toggle"

.field private static overlayColor:I


# instance fields
.field protected isIndicatorEnabled:Z

.field private mClickPattern:[J

.field protected mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field mHapticFeedback:Z

.field private mIconView:Landroid/widget/ImageView;

.field private mIndicator:Landroid/widget/LinearLayout;

.field private mLongClickPattern:[J

.field protected mState:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

.field private mText:Ljava/lang/String;

.field private mTextId:I

.field private mTextView:Landroid/widget/TextView;

.field mVibrator:Landroid/os/Vibrator;

.field protected mView:Landroid/view/View;

.field private themeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic $SWITCH_TABLE$com$android$systemui$statusbar$powerwidget$Toggle$State()[I
    .locals 3

    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->$SWITCH_TABLE$com$android$systemui$statusbar$powerwidget$Toggle$State:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->values()[Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->DISABLED:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->ENABLED:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->INTERMEDIATE:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->TURNING_OFF:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->TURNING_ON:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->UNKNOWN:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->$SWITCH_TABLE$com$android$systemui$statusbar$powerwidget$Toggle$State:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->INDICATOR_ON_COLOR:I

    sput v0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->INDICATOR_OFF_COLOR:I

    const/high16 v0, -0x8000

    sput v0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->overlayColor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->UNKNOWN:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mState:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->isIndicatorEnabled:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mTextId:I

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mHapticFeedback:Z

    new-instance v0, Lcom/android/systemui/statusbar/powerwidget/Toggle$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/powerwidget/Toggle$1;-><init>(Lcom/android/systemui/statusbar/powerwidget/Toggle;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$0(Lcom/android/systemui/statusbar/powerwidget/Toggle;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mIndicator:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/systemui/statusbar/powerwidget/Toggle;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mIconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$10(Lcom/android/systemui/statusbar/powerwidget/Toggle;Landroid/content/Context;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->getThemeOverlayColor(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic access$11(I)V
    .locals 0

    sput p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->overlayColor:I

    return-void
.end method

.method static synthetic access$12()I
    .locals 1

    sget v0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->overlayColor:I

    return v0
.end method

.method static synthetic access$13(Lcom/android/systemui/statusbar/powerwidget/Toggle;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->initIndicatorColors()V

    return-void
.end method

.method static synthetic access$2(Lcom/android/systemui/statusbar/powerwidget/Toggle;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/android/systemui/statusbar/powerwidget/Toggle;Lcom/android/systemui/statusbar/powerwidget/Toggle$State;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->stateToBoolean(Lcom/android/systemui/statusbar/powerwidget/Toggle$State;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4(Lcom/android/systemui/statusbar/powerwidget/Toggle;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->getThemeResource(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Lcom/android/systemui/statusbar/powerwidget/Toggle;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->setIndicatorProgress()V

    return-void
.end method

.method static synthetic access$6()I
    .locals 1

    sget v0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->INDICATOR_OFF_COLOR:I

    return v0
.end method

.method static synthetic access$7()I
    .locals 1

    sget v0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->INDICATOR_ON_COLOR:I

    return v0
.end method

.method static synthetic access$8(Lcom/android/systemui/statusbar/powerwidget/Toggle;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mTextId:I

    return v0
.end method

.method static synthetic access$9(Lcom/android/systemui/statusbar/powerwidget/Toggle;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mText:Ljava/lang/String;

    return-object v0
.end method

.method private getThemeOverlayColor(Landroid/content/Context;)I
    .locals 6

    const/high16 v2, -0x8000

    const/4 v5, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v3, 0x1

    new-array v3, v3, [I

    const v4, 0x2010055

    aput v4, v3, v5

    invoke-virtual {p1, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v5, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "tweaks_neqs_oncolor"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    move v2, v0

    goto :goto_0
.end method

.method public static getThemeOverlayColor(Landroid/content/res/Resources;)I
    .locals 2

    sget v0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->overlayColor:I

    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->overlayColor:I

    :goto_0
    return v0

    :cond_0
    const v0, 0x2060003

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0
.end method

.method private getThemeResource(I)Landroid/graphics/drawable/Drawable;
    .locals 13

    iget-object v10, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mContext:Landroid/content/Context;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v10, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v10, "tweaks_systemui_theme_heqs"

    invoke-static {v0, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    const-string v10, ""

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    :try_start_0
    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v6

    iget-object v10, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v7

    iget-object v10, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "venom.systemui.theme."

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6, v7, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    :goto_0
    return-object v10

    :catch_0
    move-exception v1

    const-string v10, "m0narX_tweaks"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Error loading Horizontal EQS from theme: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    goto :goto_0
.end method

.method private initIndicatorColors()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tweaks_heqs_indicator_off_color"

    iget-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->INDICATOR_OFF_COLOR:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tweaks_heqs_indicator_on_color"

    sget v2, Lcom/android/systemui/statusbar/powerwidget/Toggle;->overlayColor:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->INDICATOR_ON_COLOR:I

    return-void
.end method

.method private setButtonSize()V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tweaks_heqs_size"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const v0, 0x7f0b0016

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void

    :pswitch_0
    const v0, 0x7f0b0017

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0b0018

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setIndicatorProgress()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mIndicator:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->getIndicatorsCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mState:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    sget-object v2, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->ENABLED:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mState:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    sget-object v2, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->TURNING_ON:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mIndicator:Landroid/widget/LinearLayout;

    sget v2, Lcom/android/systemui/statusbar/powerwidget/Toggle;->INDICATOR_ON_COLOR:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->getIndicatorsProgress()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/android/systemui/statusbar/powerwidget/Toggle;->INDICATOR_ON_COLOR:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/android/systemui/statusbar/powerwidget/Toggle;->INDICATOR_OFF_COLOR:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1
.end method

.method private setupThemeReceiver()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/powerwidget/Toggle$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/powerwidget/Toggle$2;-><init>(Lcom/android/systemui/statusbar/powerwidget/Toggle;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->themeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private stateToBoolean(Lcom/android/systemui/statusbar/powerwidget/Toggle$State;)Z
    .locals 2

    invoke-static {}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->$SWITCH_TABLE$com$android$systemui$statusbar$powerwidget$Toggle$State()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected booleanToState(Z)Lcom/android/systemui/statusbar/powerwidget/Toggle$State;
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->ENABLED:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->DISABLED:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    goto :goto_0
.end method

.method public collapseStatusBar()V
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->collapsePanels()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected dismissKeyGuard()V
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected getBroadcastIntentFilter()Landroid/content/IntentFilter;
    .locals 1

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    return-object v0
.end method

.method protected getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getCurrentState()Lcom/android/systemui/statusbar/powerwidget/Toggle$State;
.end method

.method protected getIconDrawableForState(Lcom/android/systemui/statusbar/powerwidget/Toggle$State;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getIconForState(Z)I
.end method

.method protected getIndicatorsCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getIndicatorsProgress()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected getObservedUris()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method protected getResources()Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mState:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    sget-object v2, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->TURNING_ON:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mState:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    sget-object v2, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->TURNING_OFF:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mState:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    sget-object v2, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->INTERMEDIATE:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    if-eq v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mHapticFeedback:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mClickPattern:[J

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mClickPattern:[J

    array-length v1, v1

    if-ne v1, v4, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mVibrator:Landroid/os/Vibrator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mClickPattern:[J

    aget-wide v2, v2, v5

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f050019

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->onToggleClick()V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tweaks_eqs_autoclose"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->getIndicatorsCount()I

    move-result v1

    if-ne v1, v4, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->collapseStatusBar()V

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mVibrator:Landroid/os/Vibrator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mClickPattern:[J

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate([JI)V

    goto :goto_0
.end method

.method public onDirtyReceived(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onDirtySettingChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->onSettingChanged()V

    :cond_0
    return-void
.end method

.method protected onHandleMessage(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->onToggleLongClick()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mHapticFeedback:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mLongClickPattern:[J

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mVibrator:Landroid/os/Vibrator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mLongClickPattern:[J

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate([JI)V

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method protected onRefresh()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/systemui/statusbar/powerwidget/Toggle$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/powerwidget/Toggle$3;-><init>(Lcom/android/systemui/statusbar/powerwidget/Toggle;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method protected onSettingChanged()V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 3

    const-string v0, "Venom - Toggle"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->themeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    const-string v0, "Venom - Toggle"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "themeReceiver: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->themeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->themeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->themeReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method

.method protected abstract onToggleClick()V
.end method

.method protected abstract onToggleLongClick()Z
.end method

.method protected sendBroadcast(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public sendEmptyMessage(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public sendMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setCurrentState(Lcom/android/systemui/statusbar/powerwidget/Toggle$State;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mState:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public setHapticFeedback(Z[J[J)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mHapticFeedback:Z

    iput-object p2, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mClickPattern:[J

    iput-object p3, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mLongClickPattern:[J

    return-void
.end method

.method protected setTitle(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mTextId:I

    return-void
.end method

.method protected setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mText:Ljava/lang/String;

    return-void
.end method

.method protected setup(Landroid/view/View;)V
    .locals 11

    const/4 v10, -0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    iput-object p1, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mView:Landroid/view/View;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->setupThemeReceiver()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->themeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.htc.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "com.htc.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "com.htc.intent.category.THEMEID"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->themeReceiver:Landroid/content/BroadcastReceiver;

    const-string v6, "com.htc.permission.APP_DEFAULT"

    invoke-virtual {v4, v5, v1, v6, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->initIndicatorColors()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mView:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mView:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mView:Landroid/view/View;

    const v5, 0x7f0700ac

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mIconView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mView:Landroid/view/View;

    const v5, 0x7f0700ad

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "tweaks_heqs_titlecolor"

    invoke-static {v5, v6, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->setButtonSize()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mView:Landroid/view/View;

    const v5, 0x7f0700ae

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->getIndicatorsCount()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8, v8, v8, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->getIndicatorsCount()I

    move-result v4

    if-lt v0, v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "vibrator"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    iput-object v4, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->getCurrentState()Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->setCurrentState(Lcom/android/systemui/statusbar/powerwidget/Toggle$State;)V

    :goto_1
    return-void

    :cond_1
    new-instance v2, Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f80

    invoke-direct {v3, v10, v10, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    if-eqz v0, :cond_2

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    :cond_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->themeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->themeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v9, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->themeReceiver:Landroid/content/BroadcastReceiver;

    :cond_4
    iput-object v9, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mIconView:Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mVibrator:Landroid/os/Vibrator;

    iput-object v9, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mTextView:Landroid/widget/TextView;

    iput-object v9, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mContext:Landroid/content/Context;

    goto :goto_1
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->dismissKeyGuard()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->collapseStatusBar()V

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mContext:Landroid/content/Context;

    const-string v2, "Cant start activity! Application not found!"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
