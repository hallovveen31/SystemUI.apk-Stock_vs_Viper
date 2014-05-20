.class public Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;
.super Lcom/android/systemui/statusbar/powerwidget/Toggle;
.source "BrightnessButton.java"


# static fields
.field private static final AUTO_BACKLIGHT:I = -0x1

.field private static final BACKLIGHTS:[I = null

.field private static final BRIGHTNESS_MODE_URI:Landroid/net/Uri; = null

.field private static final BRIGHTNESS_URI:Landroid/net/Uri; = null

.field private static final HIGH_BACKLIGHT:I = 0xbf

.field private static final LOW_BACKLIGHT:I = 0x3f

.field private static final MAX_BACKLIGHT:I = 0xff

.field private static final MID_BACKLIGHT:I = 0x7f

.field private static final MIN_BACKLIGHT:I = 0x14

.field private static final OBSERVED_URIS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAutoBrightness:Z

.field private mBacklightValues:[I

.field private mCurrentBacklightIndex:I

.field private mCurrentBrightness:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->BACKLIGHTS:[I

    const-string v0, "screen_brightness"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->BRIGHTNESS_URI:Landroid/net/Uri;

    const-string v0, "screen_brightness_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->OBSERVED_URIS:Ljava/util/List;

    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->OBSERVED_URIS:Ljava/util/List;

    sget-object v1, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->BRIGHTNESS_URI:Landroid/net/Uri;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->OBSERVED_URIS:Ljava/util/List;

    sget-object v1, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0x14t 0x0t 0x0t 0x0t
        0x3ft 0x0t 0x0t 0x0t
        0x7ft 0x0t 0x0t 0x0t
        0xbft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/Toggle;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [I

    aput v1, v0, v1

    aput v2, v0, v2

    aput v4, v0, v4

    aput v5, v0, v5

    const/4 v1, 0x5

    const/4 v2, 0x5

    aput v2, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mBacklightValues:[I

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mAutoBrightness:Z

    iput v3, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mCurrentBacklightIndex:I

    const v0, 0x7f0a014d

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->setTitle(I)V

    return-void
.end method

.method private updateSettings()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v5, -0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mAutoBrightness:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mAutoBrightness:Z

    if-eqz v1, :cond_2

    iput v5, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mCurrentBrightness:I

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mCurrentBrightness:I

    const/4 v0, 0x0

    :goto_2
    sget-object v1, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->BACKLIGHTS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mCurrentBrightness:I

    sget-object v2, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->BACKLIGHTS:[I

    aget v2, v2, v0

    if-gt v1, v2, :cond_3

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mCurrentBacklightIndex:I

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method


# virtual methods
.method protected getCurrentState()Lcom/android/systemui/statusbar/powerwidget/Toggle$State;
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->updateSettings()V

    iget v0, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mCurrentBrightness:I

    const/16 v1, 0x3f

    if-gt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mAutoBrightness:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->DISABLED:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->ENABLED:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    goto :goto_0
.end method

.method protected getIconForState(Z)I
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mAutoBrightness:Z

    if-eqz v0, :cond_0

    const v0, 0x7f02057f

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mCurrentBrightness:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_1

    const v0, 0x7f020583

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mCurrentBrightness:I

    const/16 v1, 0x3f

    if-gt v0, v1, :cond_2

    const v0, 0x7f020582

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mCurrentBrightness:I

    const/16 v1, 0x7f

    if-gt v0, v1, :cond_3

    const v0, 0x7f020580

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mCurrentBrightness:I

    const/16 v1, 0xbf

    if-gt v0, v1, :cond_4

    const v0, 0x7f020581

    goto :goto_0

    :cond_4
    const v0, 0x7f020584

    goto :goto_0
.end method

.method protected getIndicatorsCount()I
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->BACKLIGHTS:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method protected getIndicatorsProgress()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mCurrentBacklightIndex:I

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

    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->OBSERVED_URIS:Ljava/util/List;

    return-object v0
.end method

.method protected onSettingChanged()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mCurrentBrightness:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mAutoBrightness:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mAutoBrightness:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->ENABLED:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->setCurrentState(Lcom/android/systemui/statusbar/powerwidget/Toggle$State;)V

    :goto_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mAutoBrightness:Z

    if-eqz v1, :cond_5

    iput v2, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mCurrentBacklightIndex:I

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mCurrentBrightness:I

    const/16 v3, 0x3f

    if-gt v1, v3, :cond_3

    sget-object v1, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->DISABLED:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->setCurrentState(Lcom/android/systemui/statusbar/powerwidget/Toggle$State;)V

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mCurrentBrightness:I

    const/16 v3, 0x7f

    if-gt v1, v3, :cond_4

    sget-object v1, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->ENABLED:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->setCurrentState(Lcom/android/systemui/statusbar/powerwidget/Toggle$State;)V

    goto :goto_1

    :cond_4
    sget-object v1, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->ENABLED:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->setCurrentState(Lcom/android/systemui/statusbar/powerwidget/Toggle$State;)V

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_3
    sget-object v1, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->BACKLIGHTS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mCurrentBrightness:I

    sget-object v2, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->BACKLIGHTS:[I

    aget v2, v2, v0

    if-gt v1, v2, :cond_6

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mCurrentBacklightIndex:I

    goto :goto_2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method protected onToggleClick()V
    .locals 6

    const/4 v5, 0x0

    const-string v3, "power"

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iget v3, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mCurrentBacklightIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mCurrentBacklightIndex:I

    iget v3, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mCurrentBacklightIndex:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mBacklightValues:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-le v3, v4, :cond_0

    iput v5, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mCurrentBacklightIndex:I

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mBacklightValues:[I

    iget v4, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mCurrentBacklightIndex:I

    aget v0, v3, v4

    sget-object v3, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->BACKLIGHTS:[I

    aget v1, v3, v0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness_mode"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->updateSettings()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness_mode"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz v2, :cond_2

    invoke-virtual {v2, v1}, Landroid/os/PowerManager;->setBacklightBrightness(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method protected onToggleLongClick()Z
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.DISPLAY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x1

    return v1
.end method

.method protected setup(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->setup(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->updateSettings()V

    :cond_0
    return-void
.end method
