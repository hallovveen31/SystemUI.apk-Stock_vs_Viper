.class public Lcom/android/systemui/statusbar/powerwidget/AutoRotateButton;
.super Lcom/android/systemui/statusbar/powerwidget/Toggle;
.source "AutoRotateButton.java"


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

.field private static final TAG:Ljava/lang/String; = "AutoRotateButton"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/AutoRotateButton;->OBSERVED_URIS:Ljava/util/List;

    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/AutoRotateButton;->OBSERVED_URIS:Ljava/util/List;

    const-string v1, "accelerometer_rotation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/Toggle;-><init>()V

    const v0, 0x7f0a0143

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/powerwidget/AutoRotateButton;->setTitle(I)V

    return-void
.end method

.method private setAutoRotation(Z)V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/powerwidget/AutoRotateButton$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/powerwidget/AutoRotateButton$1;-><init>(Lcom/android/systemui/statusbar/powerwidget/AutoRotateButton;Z)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected getCurrentState()Lcom/android/systemui/statusbar/powerwidget/Toggle$State;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/AutoRotateButton;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accelerometer_rotation"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/powerwidget/AutoRotateButton;->booleanToState(Z)Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    move-result-object v0

    return-object v0
.end method

.method protected getIconForState(Z)I
    .locals 1

    if-eqz p1, :cond_0

    const v0, 0x7f020590

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f02058f

    goto :goto_0
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

    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/AutoRotateButton;->OBSERVED_URIS:Ljava/util/List;

    return-object v0
.end method

.method protected onSettingChanged()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/AutoRotateButton;->getCurrentState()Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/powerwidget/AutoRotateButton;->setCurrentState(Lcom/android/systemui/statusbar/powerwidget/Toggle$State;)V

    return-void
.end method

.method protected onToggleClick()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/AutoRotateButton;->getCurrentState()Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->DISABLED:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/powerwidget/AutoRotateButton;->setAutoRotation(Z)V

    if-eqz v0, :cond_1

    sget-object v1, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->TURNING_ON:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/powerwidget/AutoRotateButton;->setCurrentState(Lcom/android/systemui/statusbar/powerwidget/Toggle$State;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->TURNING_OFF:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    goto :goto_1
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

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/powerwidget/AutoRotateButton;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x1

    return v1
.end method
