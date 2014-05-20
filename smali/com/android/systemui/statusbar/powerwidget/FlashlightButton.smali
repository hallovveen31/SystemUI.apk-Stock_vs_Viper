.class public Lcom/android/systemui/statusbar/powerwidget/FlashlightButton;
.super Lcom/android/systemui/statusbar/powerwidget/Toggle;
.source "FlashlightButton.java"


# instance fields
.field private brightness:I

.field private mFlash:Lvenom/common/FlashLight;

.field private mFlashObserver:Lvenom/common/OnFlashLightChangedListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/Toggle;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/FlashlightButton;->brightness:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lvenom/common/FlashLight;->getInstance(Landroid/content/Context;)Lvenom/common/FlashLight;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/FlashlightButton;->mFlash:Lvenom/common/FlashLight;

    new-instance v0, Lcom/android/systemui/statusbar/powerwidget/FlashlightButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/powerwidget/FlashlightButton$1;-><init>(Lcom/android/systemui/statusbar/powerwidget/FlashlightButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/FlashlightButton;->mFlashObserver:Lvenom/common/OnFlashLightChangedListener;

    const v0, 0x7f0a0140

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/powerwidget/FlashlightButton;->setTitle(I)V

    return-void
.end method

.method private isSingleFlashToggle()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/FlashlightButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tweaks_eqs_singleflashtoggle"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected getCurrentState()Lcom/android/systemui/statusbar/powerwidget/Toggle$State;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/FlashlightButton;->mFlash:Lvenom/common/FlashLight;

    invoke-virtual {v0}, Lvenom/common/FlashLight;->getCurrentBrightness()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/FlashlightButton;->brightness:I

    iget v0, p0, Lcom/android/systemui/statusbar/powerwidget/FlashlightButton;->brightness:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/powerwidget/FlashlightButton;->booleanToState(Z)Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getIconForState(Z)I
    .locals 1

    if-eqz p1, :cond_0

    const v0, 0x7f020588

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f020587

    goto :goto_0
.end method

.method protected getIndicatorsCount()I
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/FlashlightButton;->isSingleFlashToggle()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method protected getIndicatorsProgress()I
    .locals 4

    const/16 v3, 0x7d

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/FlashlightButton;->isSingleFlashToggle()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/systemui/statusbar/powerwidget/FlashlightButton;->brightness:I

    if-lt v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/android/systemui/statusbar/powerwidget/FlashlightButton;->brightness:I

    if-eq v2, v3, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/powerwidget/FlashlightButton;->brightness:I

    const/16 v2, 0x7e

    if-ne v0, v2, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/powerwidget/FlashlightButton;->brightness:I

    const/16 v2, 0x7f

    if-ne v0, v2, :cond_4

    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/FlashlightButton;->mFlash:Lvenom/common/FlashLight;

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/FlashlightButton;->mFlashObserver:Lvenom/common/OnFlashLightChangedListener;

    invoke-virtual {v0, v1}, Lvenom/common/FlashLight;->setOnFlashLightChangedLister(Lvenom/common/OnFlashLightChangedListener;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/FlashlightButton;->mFlash:Lvenom/common/FlashLight;

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/FlashlightButton;->mFlashObserver:Lvenom/common/OnFlashLightChangedListener;

    invoke-virtual {v0, v1}, Lvenom/common/FlashLight;->removeOnFlashLightChangedLister(Lvenom/common/OnFlashLightChangedListener;)V

    return-void
.end method

.method protected onToggleClick()V
    .locals 5

    const/16 v4, 0x7e

    const/4 v3, 0x0

    const/16 v2, 0x7f

    const/16 v1, 0x7d

    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/FlashlightButton;->isSingleFlashToggle()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/powerwidget/FlashlightButton;->brightness:I

    if-le v0, v1, :cond_1

    iput v3, p0, Lcom/android/systemui/statusbar/powerwidget/FlashlightButton;->brightness:I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/FlashlightButton;->mFlash:Lvenom/common/FlashLight;

    iget v1, p0, Lcom/android/systemui/statusbar/powerwidget/FlashlightButton;->brightness:I

    invoke-virtual {v0, v1}, Lvenom/common/FlashLight;->setBrightness(I)V

    return-void

    :cond_1
    iput v2, p0, Lcom/android/systemui/statusbar/powerwidget/FlashlightButton;->brightness:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/powerwidget/FlashlightButton;->brightness:I

    if-nez v0, :cond_3

    iput v1, p0, Lcom/android/systemui/statusbar/powerwidget/FlashlightButton;->brightness:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/powerwidget/FlashlightButton;->brightness:I

    if-ne v0, v1, :cond_4

    iput v4, p0, Lcom/android/systemui/statusbar/powerwidget/FlashlightButton;->brightness:I

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/android/systemui/statusbar/powerwidget/FlashlightButton;->brightness:I

    if-ne v0, v4, :cond_5

    iput v2, p0, Lcom/android/systemui/statusbar/powerwidget/FlashlightButton;->brightness:I

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/android/systemui/statusbar/powerwidget/FlashlightButton;->brightness:I

    if-ne v0, v2, :cond_0

    iput v3, p0, Lcom/android/systemui/statusbar/powerwidget/FlashlightButton;->brightness:I

    goto :goto_0
.end method

.method protected onToggleLongClick()Z
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.htc.flashlight"

    const-string v2, "com.htc.flashlight.FlashlightActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/powerwidget/FlashlightButton;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x1

    return v1
.end method
