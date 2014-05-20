.class public Lcom/android/systemui/statusbar/powerwidget/ScreenOn;
.super Lcom/android/systemui/statusbar/powerwidget/Toggle;
.source "ScreenOn.java"


# static fields
.field private static final OBSERVED_URIS:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private static final SCREEN_TIMEOUT_HIGH:I = 0x1d4c0

.field private static final SCREEN_TIMEOUT_LOW:I = 0x7530

.field private static final SCREEN_TIMEOUT_MAX:I = 0x927c0

.field private static final SCREEN_TIMEOUT_MIN:I = 0x3a98

.field private static final SCREEN_TIMEOUT_NEVER:I = -0x1

.field private static final SCREEN_TIMEOUT_NORMAL:I = 0xea60


# instance fields
.field private mProgress:I

.field private mToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/ScreenOn;->OBSERVED_URIS:Ljava/util/List;

    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/ScreenOn;->OBSERVED_URIS:Ljava/util/List;

    const-string v1, "screen_off_timeout"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/Toggle;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/ScreenOn;->mToast:Landroid/widget/Toast;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/ScreenOn;->mProgress:I

    return-void
.end method

.method private getScreenTimeout()I
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/ScreenOn;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private makeTimeoutString(I)Ljava/lang/String;
    .locals 4

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/ScreenOn;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a014f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const v0, 0x10403dd

    div-int/lit16 v1, p1, 0x3e8

    const/16 v2, 0x3c

    if-lt v1, v2, :cond_1

    div-int/lit8 v1, v1, 0x3c

    const v0, 0x10403db

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/ScreenOn;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private setProgress(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/ScreenOn;->mProgress:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x3a98

    if-gt p1, v0, :cond_2

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/ScreenOn;->mProgress:I

    goto :goto_0

    :cond_2
    const/16 v0, 0x7530

    if-gt p1, v0, :cond_3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/ScreenOn;->mProgress:I

    goto :goto_0

    :cond_3
    const v0, 0xea60

    if-gt p1, v0, :cond_4

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/ScreenOn;->mProgress:I

    goto :goto_0

    :cond_4
    const v0, 0x1d4c0

    if-gt p1, v0, :cond_5

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/ScreenOn;->mProgress:I

    goto :goto_0

    :cond_5
    const v0, 0x927c0

    if-gt p1, v0, :cond_0

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/ScreenOn;->mProgress:I

    goto :goto_0
.end method


# virtual methods
.method protected getCurrentState()Lcom/android/systemui/statusbar/powerwidget/Toggle$State;
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/ScreenOn;->getScreenTimeout()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/powerwidget/ScreenOn;->setProgress(I)V

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/powerwidget/ScreenOn;->booleanToState(Z)Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getIconForState(Z)I
    .locals 1

    if-eqz p1, :cond_0

    const v0, 0x7f020598

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f020597

    goto :goto_0
.end method

.method protected getIndicatorsCount()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method protected getIndicatorsProgress()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/powerwidget/ScreenOn;->mProgress:I

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

    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/ScreenOn;->OBSERVED_URIS:Ljava/util/List;

    return-object v0
.end method

.method protected onRefresh()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->onRefresh()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/ScreenOn;->getScreenTimeout()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/powerwidget/ScreenOn;->makeTimeoutString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/powerwidget/ScreenOn;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method protected onSettingChanged()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/ScreenOn;->getScreenTimeout()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/powerwidget/ScreenOn;->makeTimeoutString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/powerwidget/ScreenOn;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/ScreenOn;->getCurrentState()Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/powerwidget/ScreenOn;->setCurrentState(Lcom/android/systemui/statusbar/powerwidget/Toggle$State;)V

    return-void
.end method

.method protected onToggleClick()V
    .locals 3

    const v2, 0x927c0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/ScreenOn;->getScreenTimeout()I

    move-result v0

    const/16 v1, 0x3a98

    if-ge v0, v1, :cond_1

    const/16 v0, 0x3a98

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/ScreenOn;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_off_timeout"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/powerwidget/ScreenOn;->setProgress(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/ScreenOn;->onRefresh()V

    return-void

    :cond_1
    const/16 v1, 0x7530

    if-ge v0, v1, :cond_2

    const/16 v0, 0x7530

    goto :goto_0

    :cond_2
    const v1, 0xea60

    if-ge v0, v1, :cond_3

    const v0, 0xea60

    goto :goto_0

    :cond_3
    const v1, 0x1d4c0

    if-ge v0, v1, :cond_4

    const v0, 0x1d4c0

    goto :goto_0

    :cond_4
    if-ge v0, v2, :cond_5

    const v0, 0x927c0

    goto :goto_0

    :cond_5
    if-ne v0, v2, :cond_0

    const/4 v0, -0x1

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

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/powerwidget/ScreenOn;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x1

    return v1
.end method

.method protected setup(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->setup(Landroid/view/View;)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/ScreenOn;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/ScreenOn;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/ScreenOn;->mToast:Landroid/widget/Toast;

    :cond_0
    return-void
.end method
